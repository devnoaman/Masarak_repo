// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnTripModel _$ReturnTripModelFromJson(
  Map<String, dynamic> json,
) => _ReturnTripModel(
  id: (json['id'] as num?)?.toInt(),
  tripName: json['trip_name'] as String?,
  tripStatus: json['trip_status'] as String?,
  tripUuid: json['trip_uuid'] as String?,
  returnJobRequest: json['return_job_request'] as String?,
  returnJobRequestSecond: json['return_job_request_second'],
  printingAgent: json['printing_agent'] == null
      ? null
      : PrintingAgent.fromJson(json['printing_agent'] as Map<String, dynamic>),
  berthId: (json['berth_id'] as num?)?.toInt(),
  transportationAgent: (json['transportation_agent'] as num?)?.toInt(),
  containerNumber: json['container_number'] as String?,
  containerSize: json['container_size'] as String?,
  secondContainerNumber: json['second_container_number'],
  secondContainerSize: json['second_container_size'],
  driver: json['driver'] as String?,
  truck: json['truck'] as String?,
  takenDate: json['taken_date'] as String?,
  returnDate: json['return_date'] as String?,
  returnAt: json['return_at'],
  isPaid: (json['is_paid'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  tripId: json['trip_id'],
  workflowState: json['workflow_state'],
  jobRequest: json['job_request'],
  excludesFromImports: json['excludes_from_imports'],
  berth: json['berth'] == null
      ? null
      : Berth.fromJson(json['berth'] as Map<String, dynamic>),
  truckRelation: json['truck_relation'] == null
      ? null
      : TruckRelation.fromJson(json['truck_relation'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReturnTripModelToJson(_ReturnTripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_name': instance.tripName,
      'trip_status': instance.tripStatus,
      'trip_uuid': instance.tripUuid,
      'return_job_request': instance.returnJobRequest,
      'return_job_request_second': instance.returnJobRequestSecond,
      'printing_agent': instance.printingAgent,
      'berth_id': instance.berthId,
      'transportation_agent': instance.transportationAgent,
      'container_number': instance.containerNumber,
      'container_size': instance.containerSize,
      'second_container_number': instance.secondContainerNumber,
      'second_container_size': instance.secondContainerSize,
      'driver': instance.driver,
      'truck': instance.truck,
      'taken_date': instance.takenDate,
      'return_date': instance.returnDate,
      'return_at': instance.returnAt,
      'is_paid': instance.isPaid,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'trip_id': instance.tripId,
      'workflow_state': instance.workflowState,
      'job_request': instance.jobRequest,
      'excludes_from_imports': instance.excludesFromImports,
      'berth': instance.berth,
      'truck_relation': instance.truckRelation,
    };
