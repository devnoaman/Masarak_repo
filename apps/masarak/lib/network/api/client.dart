import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio()
    ..options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      // sendTimeout: 15000.ms,
      // receiveTimeout: 15000.ms,
      // connectTimeout: 15000.ms,
      maxRedirects: 5,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        // "Authorization": "token b82d9021d1e565a:29112632859cf5f",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
        "Access-Control-Allow-Headers":
            "Origin, X-Requested-With, Content-Type, Accept"
      },
    )
    ..interceptors.addAll([
      // InterceptorsWrapper(
      //   onError: (error, handler) {
      //     // if (error.response?.statusCode == 401) {
      //     //   ref.read(routerProvider).go(LoginPage.route);
      //     // }
      //   },
      // ),
      AwesomeDioInterceptor(),
    ]);
});
