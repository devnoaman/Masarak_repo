import 'package:freezed_annotation/freezed_annotation.dart';

part 'canceled_trip.freezed.dart';
part 'canceled_trip.g.dart';

@freezed
abstract class CanceledTrip with _$CanceledTrip {
  factory CanceledTrip({
    String? name,
    @JsonKey(name: 'trip_uuid') String? tripUuid,
  }) = _CanceledTrip;

  factory CanceledTrip.fromJson(Map<String, dynamic> json) =>
      _$CanceledTripFromJson(json);
}
