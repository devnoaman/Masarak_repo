import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:masarak_driver/app/router/router.dart';
import 'package:masarak_driver/network/api/endpoints.dart';
import 'package:masarak_driver/pages/auth/presentation/login_page.dart';
import 'package:masarak_driver/services/storage/email_password_storage.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      // sendTimeout: 15000.ms,
      // receiveTimeout: 15000.ms,
      // connectTimeout: 15000.ms,
      maxRedirects: 5,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        // "Access-Control-Allow-Origin": "*",
        // "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
        // "Access-Control-Allow-Headers":
        //     "Origin, X-Requested-With, Content-Type, Accept",
      },
    );
  final repeatDio = Dio()
    ..options = dio.options
    ..interceptors.addAll([AwesomeDioInterceptor()]);
  dio.interceptors.addAll([
    AwesomeDioInterceptor(),
    InterceptorsWrapper(
      onError: (e, handler) async {
        try {
          if (e.response?.statusCode == 401) {
            try {
              log('401 UnaUnauthorized - Attempting token refresh');
              final newAccessToken = await refreshToken(ref);
              log(newAccessToken.toString());
              if (newAccessToken != null) {
                log('New access token acquired: $newAccessToken');

                e.requestOptions.headers['Authorization'] =
                    'Bearer $newAccessToken';
                final response = await repeatDio.fetch(e.requestOptions);
                return handler.resolve(response);
              } else {
                log('Token refresh failed. Redirecting to login.');
                ref.read(routerProvider).go(LoginPage.route);
              }
            } on DioException catch (error) {
              return handler.next(error);
            }
          }

          // if (error.response?.statusCode == 401) {
          //   var storage = FlutterSecureStorage();
          //   await storage.delete(key: 'access_token');
          //   await storage.delete(key: 'login_info');
          //   ref.watch(routerProvider).go('/');
          // }
          // if (error.response?.statusCode == 401) {
          //   const storage = FlutterSecureStorage();
          //   storage.delete(key: 'login_info');
          // }
          return handler.next(e);
        } on DioException catch (e) {
          return handler.next(e);
        }
      },
    ),
  ]);

  return dio;
});

Future<String?> refreshToken(Ref ref) async {
  try {
    final refreshToken = await AuthInfo.getRefreshToken();
    final mobile = await AuthInfo.getMobile();

    if (refreshToken == null) {
      log('No refresh token available');
      return null;
    }
    var refreshDio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        headers: {'Authorization': 'Bearer $refreshToken'},
      ),
    )..interceptors.add(AwesomeDioInterceptor());
    final response = await refreshDio.post(
      Endpoints.refreshToken,
      data: {"mobile": mobile},
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      final newAccessToken = response.data['token'];
      // final newRefreshToken = parseRefreshToken(
      //   response.headers.map['set-cookie'] as List,
      // );

      await AuthInfo.setTokens(newAccessToken, null);
      // await storage.write(
      //   key: 'refresh-token',
      //   value: newRefreshToken['token'],
      // );

      return newAccessToken;
    } else {
      log('Failed to refresh token. Status code: ${response.statusCode}');
      return null;
    }
  } catch (e, s) {
    log(e.toString());
    log(s.toString());
    log('Error refreshing token: $e');
    return null;
  }
}
