import 'package:freezed_annotation/freezed_annotation.dart';

import 'trip_checkpoint.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  factory Trip({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    @JsonKey(name: 'modified_by') String? modifiedBy,
    int? docstatus,
    int? idx,
    @JsonKey(name: 'workflow_state') String? workflowState,
    @JsonKey(name: 'job_request') String? jobRequest,
    @JsonKey(name: 'port_name') String? portName,
    @JsonKey(name: 'berth_name') String? berthName,
    String? berth,
    @JsonKey(name: 'cargo_type') String? cargoType,
    String? truck,
    @JsonKey(name: 'truck_number') String? truckNumber,
    dynamic queue,
    @JsonKey(name: 'container_number') String? containerNumber,
    @JsonKey(name: 'container_number_export') dynamic containerNumberExport,
    @JsonKey(name: 'container_number_return') dynamic containerNumberReturn,
    @JsonKey(name: 'second_container_number_return')
    dynamic secondContainerNumberReturn,
    @JsonKey(name: 'return_container_size') String? returnContainerSize,
    String? driver,
    @JsonKey(name: 'driver_name') String? driverName,
    @JsonKey(name: 'driver_mother_name') String? driverMotherName,
    @JsonKey(name: 'current_check_point') String? currentCheckPoint,
    @JsonKey(name: 'current_procedure') String? currentProcedure,
    @JsonKey(name: 'exit_from_middle_custom') String? exitFromMiddleCustom,
    String? doctype,
    @JsonKey(name: 'trip_checkpoints') List<TripCheckpoint>? tripCheckpoints,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
