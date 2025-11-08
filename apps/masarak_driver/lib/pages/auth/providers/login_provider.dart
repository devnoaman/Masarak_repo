// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:masarak_driver/app/error_handling/error_handling.dart';
import 'package:masarak_driver/app/router/router.dart';
import 'package:masarak_driver/model/login_res/login_res.dart';
import 'package:masarak_driver/model/user_info/user.dart';
import 'package:masarak_driver/pages/auth/presentation/login_page.dart';
import 'package:masarak_driver/pages/home/providers/driver_info_provider.dart';
import 'package:masarak_driver/scaffolding_app.dart';
import 'package:masarak_driver/network/api/client.dart';
import 'package:masarak_driver/network/api/endpoints.dart';
import 'package:masarak_driver/services/storage/email_password_storage.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:shared/shared.dart';

class LoginState {
  final User? userInfo;
  final bool loading;
  final bool? hasError;

  LoginState({
    required this.userInfo,
    required this.loading,
    required this.hasError,
  });

  LoginState copyWith({User? userInfo, bool? loading, bool? hasError}) {
    return LoginState(
      userInfo: userInfo ?? this.userInfo,
      loading: loading ?? this.loading,
      hasError: hasError ?? this.hasError,
    );
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, GlobalState>((ref) {
  final dio = ref.read(dioProvider);
  return LoginNotifier(ref, dio);
});

class LoginNotifier extends StateNotifier<GlobalState> {
  final Ref ref;
  final Dio dio;
  LoginNotifier(this.ref, this.dio) : super(GlobalState.initial());
  login(String phoneNumber, String password, BuildContext context) async {
    state = GlobalState.loading();

    var manager = AuthManager.instance;
    try {
      var data = await manager.login(
        path: Endpoints.login,
        data: {"mobile": phoneNumber, "password": password},
        decoder: (data) {
          // print('roles ${}');

          var meRes = (data as Map<String, dynamic>).toResModel;
          var roles = meRes.user!.roles?.map((e) => e.name).toList();
          if (meRes.user != null && roles!.contains("Transportation Agent")) {
            // push transporter
            ref.read(routerProvider).go('/home-transporter');
          } else if (roles!.contains("Driver")) {
            // push driver
            ref.read(routerProvider).go('/home-driver-app');
          } else {
            // show error
          }
        },
      );
      Configuration.refreshData = {"mobile": phoneNumber};

      GlobalState.loaded(data: null);
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

  logout(BuildContext context) async {
    // state = state.copyWith(loading: true);
    final token = await AuthInfo.getAcessToken();
    final mobile = await AuthInfo.getMobile();

    var manager = AuthManager.instance;

    try {
      context.go(LoginPage.route);
      ref.invalidate(driverInfoProvider);

      var res = await manager.logout(
        path: '/logout',
        decoder: (decoder) {},
        callApi: false,
      );
      print(res);
      // context.go(LoginPage.route);
      // final response = await dio.post(
      //   Endpoints.logout,
      //   data: {'mobile': '$mobile'},
      //   options: Options(headers: {'Authorization': 'Bearer $token'}),
      // );
      // if (response.statusCode == 200) {
      //   AuthInfo.clearAll();
      //   state = state.copyWith(loading: false, userInfo: null);
      //   LoginState(userInfo: null, loading: false, hasError: false);
      //   context.go(LoginPage.route);
      // } else {
      //   showTopSnackBar(
      //     Overlay.of(context),
      //     CustomSnackBar.error(
      //       message: ServerFailure.fromCode(
      //         response.statusCode,
      //         response,
      //       ).message,
      //     ),
      //   );
      //   state = state.copyWith(loading: false, hasError: true);
      // }
    } on DioException catch (e) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(message: ServerFailure.serverError(e).message),
      );
      // state = state.copyWith(loading: false, hasError: true);
    } catch (e) {
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: "حدث خطأ ، يرجى التحقق من المعلومات واعادة المحاولة",
        ),
      );
      // state = state.copyWith(loading: false, hasError: true);
    }
  }
}
