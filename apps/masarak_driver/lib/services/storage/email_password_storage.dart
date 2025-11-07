// ignore_for_file: public_member_api_docs, sort_constructors_first
//
import 'package:masarak_driver/services/storage/storage.dart';

class LoginInfo {
  final String email;
  final String password;
  LoginInfo({required this.email, required this.password});
}

class AuthInfo {
  // static const String emailKey = 'email';
  static const String mobile = 'mobile';
  static const String driverName = 'driver_name';
  static const String driverPhoto = 'driver_photo';
  static const String passwordKey = 'password';
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static Future<String?> getMobile() async {
    return await storage.read(key: mobile);
  }

  static Future<void> setEmail(String? email) async {
    return await storage.write(key: mobile, value: email);
  }

  static Future<void> setPassword(String? password) async {
    return await storage.write(key: passwordKey, value: password);
  }

  static Future<String?> getPassword() async {
    return await storage.read(key: mobile);
  }

  static Future<String?> getAcessToken() async {
    return await storage.read(key: accessTokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return await storage.read(key: accessTokenKey);
  }

  static Future<void> getTokens() async {
    await getAcessToken();
    await getRefreshToken();
  }

  static Future<void> setTokens(
    String? accessToken,
    String? refreshToken,
  ) async {
    await storage.write(key: accessTokenKey, value: accessToken);
    await storage.write(key: refreshTokenKey, value: refreshToken);
  }

  static Future<LoginInfo?> getAll() async {
    var email = await getMobile();
    var pass = await getPassword();
    if (email == null || pass == null) return null;
    return LoginInfo(email: email, password: pass);
  }

  static Future<void> setDriverPhoto(String? driverphoto) async {
    await storage.write(key: driverPhoto, value: driverphoto);
  }

  static Future<String?> readDriverPhoto() async {
    String? driverNameandPhoto = await storage.read(key: driverPhoto);
    return driverNameandPhoto;
  }

  static void setAll(
    String? email,
    String? password,
    String? accessToken,
    String? refreshToken, [
    String? driverPhotoValue,
  ]) async {
    setEmail(email);
    setPassword(password);
    setTokens(accessToken, refreshToken);
    setDriverPhoto(driverPhotoValue);
  }

  static void clearAll() async {
    await setEmail(null);
    await setPassword(null);
    await setTokens(null, null);
    await setDriverPhoto(null);
  }
}
