import 'dart:convert';
import 'dart:io';

import 'package:flutter_auth_new/models/log_model.dart';
import 'package:flutter_auth_new/providers/isolate_provider.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:path_provider/path_provider.dart';

class LogHandler {
  Future<bool> log(LogModel error) async {
    IsolateProvider isolateProvider = new IsolateProvider();

    IsolateServices isolateServices = await isolateProvider.createIsolate();

    dynamic result = await isolateServices.run(_log, error);

    isolateServices.terminateIsolate();

    return result;
  }

  static Future<bool> _log(LogModel data) async {
    String filename = logname;
    List<dynamic> _logs = [];
    String filePath = '';
    FileSystemEntity fileSystemEntity =
        await getApplicationDocumentsDirectory();
    try {
      Directory dir = Directory(fileSystemEntity.path);
      filePath = "${dir.path}$filename";
    } catch (e) {
      throw FileSystemException('Gagal mendapatkan log file');
    }

    File logfile = File(filePath);

    if (logfile.existsSync()) {
      String content = await logfile.readAsString();

      if (content.isEmpty) {
        throw Exception('logfile is empty');
      }

      List<dynamic> cjson = jsonDecode(content);

      _logs.addAll(cjson);
    }

    _logs.add(data.toMap());

    logfile.writeAsString(jsonEncode(_logs));

    return true;
  }
}
