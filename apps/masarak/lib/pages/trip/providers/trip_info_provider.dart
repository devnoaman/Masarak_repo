import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak/models/check_model/check_model.dart';
import 'package:masarak/network/api/client.dart';
import 'package:masarak/network/api/endpoints.dart';
import 'package:masarak/pages/trip/models/trip_info_res/trip_info_res.dart';
import 'package:masarak/pages/trip/models/trip_info_state/trip_info_state.dart';
import 'package:masarak/pages/trip/providers/searchs_provider.dart';
import 'package:masarak/services/storage/email_password_storage.dart';

final trinpInfoProvider =
    StateNotifierProvider<CheckPointsNotifier, TripInfoState>((ref) {
  return CheckPointsNotifier(ref);
});

class CheckPointsNotifier extends StateNotifier<TripInfoState> {
  final Ref ref;
  String? query;
  CheckPointsNotifier(this.ref)
      : super(
          TripInfoState.initial(),
        ) {
    // get();
  }
  reset() {
    state = TripInfoState.initial();
    query = null;
  }

  search(String tripCode) async {
    if (tripCode.isEmpty) {
      reset();
      return;
    }

    query = tripCode;

    state = TripInfoState.loading();
    // var email = await AuthInfo.getEmail();
    var token = await AuthInfo.getToken();

    ref.read(dioProvider).get(
      Endpoints.getTripInfo,
      options: Options(
        headers: {
          'Authorization': token,
        },
      ),
      queryParameters: {
        "id": tripCode,
      },
    ).then((v) {
      log(
        v.data.toString(),
      );
      ref.read(searchHistoryProvider.notifier).add(
            CheckModel(
              barcode: tripCode,
            ),
          );
      var tripInfoRes = TripInfoRes.fromJson(
        v.data,
      );
      if (tripInfoRes.isValid) {
        state = TripInfoState.loaded(
          message: 'message',
          res: tripInfoRes,
        );
      } else {
        state = TripInfoState.error(
          message: tripInfoRes.message?.message?.toString() ?? '',
        );
      }
    }).onError<DioException>(
      (e, st) {
        state = TripInfoState.error(message: e.message.toString());
        // state = state.copyWith(
        //   errorMessage: e.response?.data["_error_message"].toString(),
        //   statusCode: e.response?.statusCode,
        // );
      },
    ).whenComplete(
      () {
        // state = state.copyWith(
        //   isLoading: false,
        // );
      },
    );
  }
}
