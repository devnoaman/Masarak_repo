import 'dart:developer';
import 'dart:io';

// import 'package:flutter/foundation.dart';

import 'package:masarak/pages/checks/providers/checks_provider.dart';
import 'package:masarak/pages/trip/providers/searchs_provider.dart';
import 'package:path/path.dart' show join;
import 'package:sqflite/sqflite.dart';

// import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
// import 'package:sqflite/sqflite.dart';

class SqfliteService {
  SqfliteService() {
    log('database sdsds');
    _initDb();
  }
  static Database? database;

  Database get db => database ?? _initDb() as Database;

  final String dbName = 'masarak.db';

  Future<Database?> _initDb() async {
    const path = '/my/db/path';
    // if (kIsWeb) {
    //   // Change default factory on the web
    //   databaseFactory = databaseFactoryFfiWeb;
    //   // path =;
    // }

    final databasesPath = await getDatabasesPath();
    try {
      final dir = await Directory(databasesPath).create(recursive: true);
      final path = join(dir.path, dbName);

      database = await openDatabase(
        path,
        version: 3,
        onOpen: (db) async {
          log('open');

          await db.execute(
            QrCodeTableNotifier.init,
          );
          await db.execute(
            SearchTripNotifier.init,
          );

          await db.execute('PRAGMA foreign_keys = ON;');
        },
        onCreate: (db, v) async {
          log('create');
        },
      );
      log('database opened$path');
      return database;
    } catch (e) {
      log('database error in openning database: $e');
      return null;
    }
  }

  Future<void> migrate(Database? database) async {
    log('running migration to table created');
    if (database == null) return;
  }

  deleteSqfliteDatabase() async {
    final databasesPath = await getDatabasesPath();

    final dir = await Directory(databasesPath).create(recursive: true);
    final path = join(dir.path, dbName);
    log(path);

    final db = await _initDb();
    await deleteDatabase(path);
  }
}
