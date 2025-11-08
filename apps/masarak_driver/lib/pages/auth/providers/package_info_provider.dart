// package info provider
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final packageInfoProvider = FutureProvider<PackageInfo>((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return packageInfo;
});
