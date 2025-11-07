// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/models/check_model/check_model.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/providers/sqflite_provider.dart';
import 'package:sqflite/sqflite.dart';

// class NetworkState {
//   NetworkState({
//     this.qrCodes,
//     this.isLoading = false,
//   });
//   final List<CheckModel>? qrCodes;
//   final bool? isLoading;

//   NetworkState copyWith({
//     List<CheckModel>? qrCodes,
//     bool? isLoading,
//   }) {
//     return NetworkState(
//       qrCodes: qrCodes ?? this.qrCodes,
//       isLoading: isLoading ?? this.isLoading,
//     );
//   }
// }

final searchHistoryProvider =
    StateNotifierProvider<SearchTripNotifier, NetworkState<List<CheckModel>>>(
        (ref) {
  final dbService = ref.read(sqliteDBProvider);
  return SearchTripNotifier(ref: ref, db: dbService.db);
});

class SearchTripNotifier extends StateNotifier<NetworkState<List<CheckModel>>> {
  SearchTripNotifier({
    required this.ref,
    required this.db,
  }) : super(
          NetworkState.initial(),
        ) {
    getAll();
  }
  final Ref ref;
  final Database db;

  static String tableName = 'search';

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
    // state = state.copyWith(isLoading: true);
    state = NetworkState.loading();
    log('getting all');
    var p = <CheckModel>[];
    try {
      final val = await db.transaction(
        (txn) async =>
            txn.rawQuery('SELECT * FROM $tableName  ORDER BY checkedAt DESC'),
      );
      p = (val as List).map((e) {
        log(jsonEncode(e));
        return CheckModel.fromJson(e as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      log('error in converssion');
      log(e.toString());
    }
    // log(state.qrCodes.toString());
    // return p;
    // state = state.copyWith(qrCodes: p, isLoading: false);
    if (p.isEmpty) {
      state = NetworkState.empty();
    } else {
      state = NetworkState.loaded(message: 'message', res: p);
    }
    // log(val.toString());
  }
}
