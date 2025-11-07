import 'dart:math';
import 'package:dio/dio.dart';

class ApiException implements Exception {
  Failure failure;

  ApiException({required this.failure});
}

class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.serverError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'انتهت مهلة الاتصال');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'انتهت مهلة الإرسال');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'انتهت مهلة الاستقبال');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'شهادة غير صالحة');
      case DioExceptionType.badResponse:
        return ServerFailure.fromCode(e.response?.statusCode, e.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: 'تم إلغاء الطلب');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'خطأ في الاتصال، يرجى المحاولة مرة أخرى');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'خطأ غير معروف');
    }
  }

  factory ServerFailure.fromCode(int? code, dynamic response) {
    switch (code) {
      case 400:
        return ServerFailure(message: response['message']);
      case 403:
      case 422:
        return ServerFailure(message: getError(response));
      case 401:
        return ServerFailure(message: response['message']);
      case 404:
        return ServerFailure(message: 'لا توجد بيانات لعرضها');
      case 500:
        return ServerFailure(
          message: 'خطأ داخلي في الخادم، يرجى المحاولة لاحقاً',
        );
      case 502:
        return ServerFailure(message: 'بوابة غير صالحة');
      case 503:
        return ServerFailure(message: 'الخدمة غير متاحة، يرجى المحاولة لاحقاً');
      case 504:
        return ServerFailure(message: 'انتهت مهلة البوابة');
      default:
        return ServerFailure(message: 'حدث خطأ ما، يرجى المحاولة لاحقاً');
    }
  }
}

String getError(dynamic response) {
  log(response);
  String error = '';
  if (response["data"] != null) {
    if (response["data"]["message"] != null) {
      return response["message"];
    } else if (response["data"] != null) {
      return response["data"];
    } else {
      return 'حدث خطأ ما';
    }
  }

  Map<String, dynamic> errors = response["data"];
  errors.forEach((k, v) {
    error += "${v.first}\n";
  });

  return error;
}
