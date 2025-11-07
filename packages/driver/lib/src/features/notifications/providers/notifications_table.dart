import 'dart:developer';

import 'package:driver/src/features/notifications/providers/sqflite_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/shared.dart';
import 'package:sqflite/sqflite.dart';

final notificationsProvider =
    StateNotifierProvider<
      NotificationsTableNotifier,
      GlobalState<List<Notification>, String>
    >((ref) {
      final dbService = ref.read(sqliteDBProvider);
      return NotificationsTableNotifier(ref: ref, db: dbService.db);
    });

class NotificationsTableNotifier
    extends StateNotifier<GlobalState<List<Notification>, String>> {
  NotificationsTableNotifier({required this.ref, required this.db})
    : super(GlobalState.initial()) {
    getAll();
  }
  final Ref ref;
  final Database db;

  static String tableName = 'Notifications';

  static String get init =>
      '''
  CREATE TABLE IF NOT EXISTS $tableName (
  
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
   

    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP
    );
''';
  Future add(Notification model) async {
    log('adding');
    // final d = await get(model.code);
    // log(d);
    // if ((d as List).isNotEmpty) return;
    await db.transaction(
      (txn) async => txn
          .rawInsert(
            'INSERT INTO $tableName (title, body, createdAt )  '
            'VALUES (?, ?, ?)',
            [
              model.title,
              model.body,

              if (model.createdAt == null)
                DateTime.now().toIso8601String()
              else
                model.createdAt!.toIso8601String(),
            ],
          )
          .then((onValue) {
            getAll();
            log('inserted');
            log(onValue.toString());
          })
          .catchError((e) {
            print(e);
          }),
    );
  }

  // Future get(String code) async {
  //   final val = await db.transaction(
  //     (txn) async =>
  //         txn.rawQuery('''SELECT * FROM $tableName where code = '$code' '''),
  //   );
  //   log(val.toString());

  //   return val;
  // }

  Future<void> dropTable() async {
    final val = await db.transaction(
      (txn) async => txn.rawQuery('DELETE FROM $tableName'),
    );
    getAll();
  }

  Future<void> getAll() async {
    // state = state.copyWith(isLoading: true);
    state = GlobalState.loading();
    log('getting all');
    var p = <Notification>[];
    try {
      final val = await db.transaction(
        (txn) async =>
            txn.rawQuery('SELECT * FROM $tableName ORDER BY createdAt DESC'),
      );
      p = (val as List).map((e) {
        log(e.toString());
        return Notification.fromJson(e as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      log(e.toString());
    }
    // log(state.qrCodes.toString());
    // return p;
    // state = state.copyWith(qrCodes: p, isLoading: false);
    state = GlobalState.loaded(data: p);
    // log(val.toString());
  }
}
