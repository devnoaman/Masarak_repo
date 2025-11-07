import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_checkpoint.freezed.dart';
part 'trip_checkpoint.g.dart';

@freezed
class TripCheckpoint with _$TripCheckpoint {
  factory TripCheckpoint({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'check_point') String? checkPoint,
    @JsonKey(name: 'entered_time') dynamic enteredTime,
    @JsonKey(name: 'entered_by') dynamic enteredBy,
    @JsonKey(name: 'exit_time') dynamic exitTime,
    @JsonKey(name: 'done_by') dynamic doneBy,
    dynamic notes,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
  }) = _TripCheckpoint;

  factory TripCheckpoint.fromJson(Map<String, dynamic> json) =>
      _$TripCheckpointFromJson(json);
}
