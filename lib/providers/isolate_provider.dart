import 'dart:isolate';

class IsolateProvider {
  List<SendPort> isolatePorts = [];

  Future<IsolateServices> createIsolate() async {
    ReceivePort _recivePort = new ReceivePort();
    ReceivePort _errorPort = new ReceivePort();

    Isolate.spawn(
      _spawnIsolate,
      _recivePort.sendPort,
      onError: _errorPort.sendPort,
    );

    SendPort isolateSendPort = await _recivePort.first;

    isolatePorts.add(isolateSendPort);

    return IsolateServices(
      receivePort: _recivePort,
      errorPort: _errorPort,
      isolateSendPort: isolateSendPort,
    );
  }

  static void _spawnIsolate(SendPort mainIsolate) async {
    ReceivePort isolatePort = ReceivePort();

    mainIsolate.send(isolatePort.sendPort);

    await for (IsolateHandler handler in isolatePort) {
      dynamic data = await handler.task(handler.data);

      handler.port.send([data ?? 'no-data', isolatePort.sendPort]);
    }
  }
}

class IsolateHandler {
  final SendPort port;
  final Function task;
  final dynamic data;

  IsolateHandler({
    required this.port,
    required this.task,
    required this.data,
  });
}

class IsolateServices {
  final ReceivePort receivePort;
  final ReceivePort errorPort;
  final SendPort isolateSendPort;

  IsolateServices({
    required this.receivePort,
    required this.errorPort,
    required this.isolateSendPort,
  });

  Future<dynamic> run<T>(
    Function(T) task,
    T argument,
  ) async {
    ReceivePort responsePort = ReceivePort();
    this.listenError(responsePort);

    var handleMessage =
        IsolateHandler(port: responsePort.sendPort, task: task, data: argument);

    isolateSendPort.send(handleMessage);

    List<dynamic> result = await responsePort.first;

    responsePort.close();

    return result[0];
  }

  Future<String?> listenError(ReceivePort responsePort) async {
    await for (var data in this.errorPort) {
      responsePort.close();
      this.terminateIsolate();

      String msg = data.toString();

      if (data is List) msg = data[0].toString();

      // throw IsolateException(msg, );

      print(msg);
    }
  }

  void terminateIsolate() {
    receivePort.close();
    errorPort.close();
    Isolate(isolateSendPort).kill(priority: Isolate.immediate);
  }
}

class RecivedPort {}
