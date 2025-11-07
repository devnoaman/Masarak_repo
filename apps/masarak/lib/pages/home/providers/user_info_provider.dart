import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/models/user_model/user_model.dart';
import 'package:masarak/network/api/client.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:masarak/services/storage/email_password_storage.dart';

final userInfoProvider =
    StateNotifierProvider<CheckPointsNotifier, NetworkState<UserModel>>((ref) {
  return CheckPointsNotifier(ref);
});

class CheckPointsNotifier extends StateNotifier<NetworkState<UserModel>> {
  final Ref ref;
  String? query;
  CheckPointsNotifier(this.ref)
      : super(
          NetworkState.initial(),
        ) {
    get();
  }

  void get() async {
    state = NetworkState.loading();
    // var email = await AuthInfo.getEmail();
    var token = await AuthInfo.getToken();

    ref
        .read(dioProvider)
        .get(
          Endpoints.getUserInfo,
          options: Options(
            headers: {
              'Authorization': token,
            },
          ),
        )
        .then((v) {
      log(
        v.data.toString(),
      );
      state = NetworkState.loaded(
        message: 'message',
        res: UserModel.fromJson(
          v.data['data'],
        ),
      );
    }).onError<DioException>(
      (e, st) {
        state = NetworkState.error(message: e.message.toString());
      },
    );
  }
}
