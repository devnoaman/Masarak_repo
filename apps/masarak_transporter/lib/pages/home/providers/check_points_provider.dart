import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masarak_transporter/network/api/client.dart';
import 'package:masarak_transporter/network/api/endpoints.dart';
import 'package:masarak_transporter/pages/home/models/check_point.dart';
import 'package:masarak_transporter/pages/home/models/check_point_model.dart';

final checkPoinstProvider =
    StateNotifierProvider<CheckPointsNotifier, CheckPointState>((ref) {
      return CheckPointsNotifier(ref);
    });

class CheckPointsNotifier extends StateNotifier<CheckPointState> {
  final Ref ref;
  CheckPointsNotifier(this.ref) : super(CheckPointState()) {
    get();
  }
  get() {
    state = state.copyWith(isLoading: true);
    ref
        .read(dioProvider)
        .get(
          Endpoints.checkPoints,
          queryParameters: {
            "fields": '''["check_point_name"]''',
            "filters":
                '''[["Users For Check Points","user","=","azamil@transforat.com"]]''',
          },
        )
        .then((v) {
          log(v.data.toString());
          state = state.copyWith(
            checkPoints: (v.data['data'] as List)
                .map((e) => CheckPoint.fromJson(e))
                .toList(),
          );
        })
        .onError((e, st) {
          state = state.copyWith(errorMessage: e.toString());
        })
        .whenComplete(() {
          state = state.copyWith(isLoading: false);
        });
  }
}
