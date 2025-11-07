// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/models/check_model/check_model.dart';
import 'package:masarak/providers/sqflite_provider.dart';
import 'package:sqflite/sqflite.dart';

class QrCodesState {
  QrCodesState({
    this.qrCodes,
    this.isLoading = false,
  });
  final List<CheckModel>? qrCodes;
  final bool? isLoading;

  QrCodesState copyWith({
    List<CheckModel>? qrCodes,
    bool? isLoading,
  }) {
    return QrCodesState(
      qrCodes: qrCodes ?? this.qrCodes,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final checksHistoryProvider =
    StateNotifierProvider<QrCodeTableNotifier, QrCodesState>((ref) {
  final dbService = ref.read(sqliteDBProvider);
  return QrCodeTableNotifier(ref: ref, db: dbService.db);
});

class QrCodeTableNotifier extends StateNotifier<QrCodesState> {
  QrCodeTableNotifier({
    required this.ref,
    required this.db,
  }) : super(QrCodesState()) {
    getAll();
  }
  final Ref ref;
  final Database db;

  static String tableName = 'checks';

  static String get init => '''
  CREATE TABLE IF NOT EXISTS $tableName (
    id INTEGER PRIMARY KEY,
    barcode VARCHAR(255) NOT NULL,
    checkedAt DATETIME DEFAULT CURRENT_TIMESTAMP
    );
''';
  Future add(CheckModel model) async {
    log('adding');
    final d = await get(model.barcode!);
    // log(d);
    if ((d as List).isNotEmpty) return;
    await db.transaction(
      (txn) async => txn.rawInsert(
        'INSERT INTO $tableName (barcode, checkedAt )  '
        'VALUES (?, ?)',
        [
          model.barcode,
          model.checkedAt?.toIso8601String() ??
              DateTime.now().toIso8601String(),
        ],
      ).then(
        (onValue) {
          getAll();
          log('inserted');
          log(onValue.toString());
        },
      ).catchError((e) {}),
    );
  }

  Future get(String code) async {
    final val = await db.transaction(
      (txn) async =>
          txn.rawQuery('''SELECT * FROM $tableName where barcode = '$code' '''),
    );
    log(val.toString());

    return val;
  }

  dropTable() async {
    final val = await db.transaction(
      (txn) async => txn.rawQuery('DELETE FROM $tableName'),
    );
    getAll();
  }

  getAll() async {
    state = state.copyWith(isLoading: true);
    log('getting all');
    var p = <CheckModel>[];
    try {
      final val = await db.transaction(
        (txn) async => txn.rawQuery('SELECT * FROM $tableName'),
      );
      p = (val as List).map((e) {
        log(jsonEncode(e));
        return CheckModel.fromJson(e as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      log('error in converssion');
      log(e.toString());
    }
    log(state.qrCodes.toString());
    // return p;
    state = state.copyWith(qrCodes: p, isLoading: false);
    // log(val.toString());
  }
}
