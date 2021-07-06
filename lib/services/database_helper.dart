import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:provider/provider.dart';

class DatabaseHelper {
  DatabaseHelper._internal();

  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _databaseHelper;
  }

  late Database _database;

  Database getDatabse() {
    return _database;
  }

  Future<void> initDB() async {
    var path = await getApplicationDocumentsDirectory();
    var dbpath = "$path/tokotok.db";

    Database dbConnection = await openDatabase(dbpath, version: 1,
        onCreate: (Database db, int version) async {
      db.execute(
          "create table barang (id_barang varchar(10), nama_barang varchar(50), harga_barang bigint, stok int, kategori varchar(50), primary key(id_barang)");
    });
  }
}
