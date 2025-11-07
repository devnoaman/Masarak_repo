// ignore_for_file: public_member_api_docs, sort_constructors_first
//
import 'package:masarak/services/storage/storage.dart';

class LoginInfo {
  final String email;
  final String password;
  LoginInfo({
    required this.email,
    required this.password,
  });
}

class AuthInfo {
  static const String emailKey = 'email';
  static const String passwordKey = 'password';
  static const String tokenKey = 'token';
  static Future<String?> getEmail() async {
    return await storage.read(key: emailKey);
  }

  static Future<void> setEmail(String? email) async {
    return await storage.write(key: emailKey, value: email);
  }

  static Future<void> setPassword(String? password) async {
    return await storage.write(key: passwordKey, value: password);
  }

  static Future<String?> getPassword() async {
    return await storage.read(key: emailKey);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: tokenKey);
  }

  static Future<void> setToken(String? token) async {
    return await storage.write(
      key: tokenKey,
      value: token,
    );
  }

  static Future<LoginInfo?> getAll() async {
    var email = await getEmail();
    var pass = await getPassword();
    if (email == null || pass == null) return null;
    return LoginInfo(email: email, password: pass);
  }

  static void setAll(String email, String password) async {
    setEmail(email);
    setPassword(password);
  }

  static void clearAll() async {
    setEmail(null);
    setPassword(null);
    setToken(null);
  }
}
