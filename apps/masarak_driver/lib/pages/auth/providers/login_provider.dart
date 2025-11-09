// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak_driver/app/error_handling/error_handling.dart';
import 'package:masarak_driver/app/router/router.dart';
import 'package:masarak_driver/network/api/client.dart';
import 'package:masarak_driver/network/api/endpoints.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:shared/shared.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, GlobalState>((ref) {
  final dio = ref.read(dioProvider);
  return LoginNotifier(ref, dio);
});

class LoginNotifier extends StateNotifier<GlobalState> {
  final Ref ref;
  final Dio dio;
  LoginNotifier(this.ref, this.dio) : super(GlobalState.initial());
  Future<void> login(
    String phoneNumber,
    String password,
    BuildContext context,
  ) async {
    state = GlobalState.loading();

    var manager = AuthManager.instance;
    try {
      var data = await manager.login(
        path: Endpoints.login,
        data: {"mobile": phoneNumber, "password": password},
        decoder: (data) {
          // print('roles ${}');
          return data;
        },
      );
      state = GlobalState.loaded(data: null);
      ref.read(routerProvider).go('/splash');
      // var meRes = (data as Map<String, dynamic>).toResModel;
      // var roles = meRes.user!.roles?.map((e) => e.name).toList();

      // if (meRes.user != null && roles!.contains("Transportation Agent")) {
      //   // push transporter
      //   ref.read(routerProvider).go('/home-transporter');
      // } else if (roles!.contains("Driver")) {
      //   // push driver
      //   ref.read(routerProvider).go('/home-driver-app');
      // } else {
      //   // show error
      // }
      // Configuration.refreshData = {"mobile": phoneNumber};
    } on DioException catch (e, s) {
      print(e);
      print(s);
      // state = state.copyWith(loading: false, hasError: true);
      state = GlobalState.error(e: e);
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(message: ServerFailure.serverError(e).message),
      );
    } catch (e) {
      // state = state.copyWith(loading: false, hasError: true);
      state = GlobalState.error(e: e);

      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: "حدث خطأ ، يرجى التحقق من المعلومات واعادة المحاولة",
        ),
      );
    }
  }

  var errors = {
    "mobile": 'يرجى التأكد من رقم الهاتف',
    "password": 'كلمة المرور غير صحيحة',
  };
}
