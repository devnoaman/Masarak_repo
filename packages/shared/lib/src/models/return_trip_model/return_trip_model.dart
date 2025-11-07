import 'package:freezed_annotation/freezed_annotation.dart';

import 'berth.dart';
import 'printing_agent.dart';
import 'truck_relation.dart';

part 'return_trip_model.freezed.dart';
part 'return_trip_model.g.dart';

@freezed
abstract class ReturnTripModel with _$ReturnTripModel {
  factory ReturnTripModel({
    int? id,
    @JsonKey(name: 'trip_name') String? tripName,
    @JsonKey(name: 'trip_status') String? tripStatus,
    @JsonKey(name: 'trip_uuid') String? tripUuid,
    @JsonKey(name: 'return_job_request') String? returnJobRequest,
    @JsonKey(name: 'return_job_request_second') dynamic returnJobRequestSecond,
    @JsonKey(name: 'printing_agent') PrintingAgent? printingAgent,
    @JsonKey(name: 'berth_id') int? berthId,
    @JsonKey(name: 'transportation_agent') int? transportationAgent,
    @JsonKey(name: 'container_number') String? containerNumber,
    @JsonKey(name: 'container_size') String? containerSize,
    @JsonKey(name: 'second_container_number') dynamic secondContainerNumber,
    @JsonKey(name: 'second_container_size') dynamic secondContainerSize,
    String? driver,
    String? truck,
    @JsonKey(name: 'taken_date') String? takenDate,
    @JsonKey(name: 'return_date') String? returnDate,
    @JsonKey(name: 'return_at') dynamic returnAt,
    @JsonKey(name: 'is_paid') int? isPaid,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'trip_id') dynamic tripId,
    @JsonKey(name: 'workflow_state') dynamic workflowState,
    @JsonKey(name: 'job_request') dynamic jobRequest,
    @JsonKey(name: 'excludes_from_imports') dynamic excludesFromImports,
    Berth? berth,
    @JsonKey(name: 'truck_relation') TruckRelation? truckRelation,
  }) = _ReturnTripModel;

  factory ReturnTripModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnTripModelFromJson(json);
}
