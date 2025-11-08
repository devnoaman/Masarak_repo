import 'package:api_client/api_client.dart';

class ForgotPasswordController extends Endpoint {
  ForgotPasswordController._()
    : super(
        path: '/change-password',

        method: HTTPMethod.put,

        responseDecoder: (data) {},
      );

  static final instance = ForgotPasswordController._();

  static Future<ResponseState> sendOtp(String phone) async {
    instance.data = {'mobile': phone};
    return await instance.callWithResult();
  }

  static Future<ResponseState> setNewPassword(
    String phone,
    String otp,
    String password,
  ) async {
    instance.data = {'mobile': phone, 'otp': otp, 'password': password};
    return await instance.callWithResult();
  }
}
