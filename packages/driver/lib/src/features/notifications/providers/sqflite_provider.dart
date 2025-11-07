import 'package:driver/services/sqflite_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sqliteDBProvider = Provider<SqfliteService>((ref) {
  return SqfliteService();
});
