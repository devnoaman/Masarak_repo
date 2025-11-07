// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/network/api/client.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:masarak/pages/home/models/validate_user_state.dart';
import 'package:masarak/pages/home/providers/check_points_provider.dart';
import 'package:masarak/pages/home/providers/user_info_provider.dart';
import 'package:masarak/services/storage/email_password_storage.dart';
import 'package:masarak/services/storage/storage.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

final checkTokenProvider =
    StateNotifierProvider<CheckTokenNotifier, ValidateUser>((ref) {
  return CheckTokenNotifier(ref: ref);
});

class CheckTokenNotifier extends StateNotifier<ValidateUser> {
  final Ref ref;
  CheckTokenNotifier({
    required this.ref,
  }) : super(
          ValidateUser(),
        );
  Future<bool> validate({
    required String apiKey,
    required String passKey,
    required BuildContext ctx,
  }) async {
    // final appKey = ref.read(appContextProvider);

    state = state.copyWith(
      isLoading: true,
    );
    // var email = await AuthInfo.getEmail();
    return ref.read(dioProvider).get(
      Endpoints.getUser,
      options: Options(
        headers: {
          'Authorization': 'token $apiKey:$passKey',
        },
      ),
      queryParameters: {},
    ).then((v) {
      log(
        v.data.toString(),
      );

      state = state.copyWith(
        isLoading: false,
        errorMessage: null,
      );
      if (v.statusCode == 200) {
        AuthInfo.setToken(
          'token ${apiKey.trim()}:${passKey.trim()}',
        );
        ref.invalidate(userInfoProvider);
        AuthInfo.setEmail(
          v.data['message'],
        );
        ref.invalidate(
          checkPoinstProvider,
        );
      }
      return true;
    }).onError<DioException>(
      (e, st) {
        state = state.copyWith(
          errorMessage: e.response?.data["_error_message"].toString(),
        );
        storage.write(key: 'error', value: e.response?.data.toString());
        // var ctx = appKey.currentState?.context;
        if (mounted && ctx.mounted) {
          showTopSnackBar(
            Overlay.of(ctx),
            CustomSnackBar.error(
              message: 'حدث خطأ غير معلوم ',
            ),
          );
        }
        return false;
      },
    ).whenComplete(
      () {
        state = state.copyWith(
          isLoading: false,
        );
      },
    );
    // return false;
  }
}
