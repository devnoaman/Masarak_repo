import 'package:hive_ce/hive.dart';
import 'package:masarak/services/storage/static_setting_model.dart';

class Endpoints {
  Endpoints._() {
    // await Hive.initFlutter();
  }
  static final Box _box = Hive.box('staticSetting');

  // static const String baseUrl = dev;

  static String get baseUrl => _box.get('baseUrl', defaultValue: dev);
  static set baseUrl(String value) => _box.put('baseUrl', value);

  // was stage

  static const String prod = 'https://dev-gcpi.frappe.cloud/api/';
  static const String stage = 'https://stage-masarak.frappe.cloud/api/';
  static const String dev = 'https://dev-pmis.gwy.iq/api/';
  static const String testing = 'https://testing-env.frappe.cloud/api/';
  static const String login = 'method/login';
  static const String getUser = 'method/frappe.auth.get_logged_user';
  static const String processCheckpoint = 'method/process_checkpoint';
  static const String getTripInfo = 'method/get_trip_info';
  static const String getUserInfo = 'method/get_user_info';
  static const String checkPoints = 'resource/Check%20Points';
}
// FRAPPE_API_USERNAME=f39a13dc264037d
// FRAPPE_API_PASSWORD=a195a7b8ced9989
// FRAPPE_API_URL=https://dev-gcpi.frappe.cloud/api
