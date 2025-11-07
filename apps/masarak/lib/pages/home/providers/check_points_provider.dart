import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/models/network_state/network_state.dart';
import 'package:masarak/network/api/client.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:masarak/pages/home/models/check_point.dart';
import 'package:masarak/services/storage/email_password_storage.dart';

final checkPoinstProvider =
    StateNotifierProvider<CheckPointsNotifier, NetworkState<List<CheckPoint>>>(
        (ref) {
  return CheckPointsNotifier(ref);
});

class CheckPointsNotifier
    extends StateNotifier<NetworkState<List<CheckPoint>>> {
  final Ref ref;
  CheckPointsNotifier(this.ref)
      : super(
          NetworkState.initial(),
        ) {
    get();
  }
  get() async {
    state = NetworkState.loading();
    var email = await AuthInfo.getEmail();
    var token = await AuthInfo.getToken();

    ref.read(dioProvider).get(
      Endpoints.checkPoints,
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
      queryParameters: {
        "fields": '''["check_point_name"]''',
        "filters": '''[["Users For Check Points","user","=","$email"]]''',
      },
    ).then((v) {
      log(
        v.data.toString(),
      );
      var points = (v.data['data'] as List)
          .map(
            (e) => CheckPoint.fromJson(e),
          )
          .toList();

      if (points.isEmpty) {
        if (mounted) {
          state = NetworkState.empty();
        }
      } else {
        if (mounted) {
          state = NetworkState.loaded(
            message: 'message',
            res: points,
          );
        }
      }

      // state.copyWith(
      //   checkPoints: ,
      // );
    }).onError<DioException>(
      (e, st) {
        state = NetworkState.error(
          message: e.response?.data["_error_message"]?.toString() ?? '',
        );

        //  state.copyWith(
        //   errorMessage: ,
        //   statusCode: e.response?.statusCode,
        // );
      },
    );
  }
}
