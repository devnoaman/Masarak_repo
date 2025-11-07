import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_check_point.freezed.dart';
part 'trip_check_point.g.dart';

@freezed
abstract class TripCheckPoint with _$TripCheckPoint {
  factory TripCheckPoint({
    String? name,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    String? owner,
    int? docstatus,
    int? idx,
    String? parent,
    String? parentfield,
    String? parenttype,
    @JsonKey(name: 'check_point') String? checkPoint,
    @JsonKey(name: 'entered_time') DateTime? enteredTime,
    @JsonKey(name: 'entered_by') dynamic enteredBy,
    @JsonKey(name: 'exit_time') DateTime? exitTime,
    @JsonKey(name: 'done_by') dynamic doneBy,
    dynamic notes,
  }) = _TripCheckPoint;

  factory TripCheckPoint.fromJson(Map<String, dynamic> json) =>
      _$TripCheckPointFromJson(json);
}
