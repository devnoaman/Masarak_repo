import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'trip_info_res.freezed.dart';
part 'trip_info_res.g.dart';

@freezed
class TripInfoRes with _$TripInfoRes {
  const TripInfoRes._();
  factory TripInfoRes({
    Message? message,
  }) = _TripInfoRes;
  bool get isValid =>
      message != null && message!.status != null && message!.status != "error";

  factory TripInfoRes.fromJson(Map<String, dynamic> json) =>
      _$TripInfoResFromJson(json);
}
