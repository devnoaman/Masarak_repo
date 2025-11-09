// package info provider
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_info_plus/device_info_plus.dart';

final packageInfoProvider = FutureProvider<PackageInfo>((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  var info = await deviceInfo.deviceInfo;

  print('Package Info: ${info.data}');
  return packageInfo;
});
