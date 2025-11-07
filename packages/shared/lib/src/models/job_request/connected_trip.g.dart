// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connected_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConnectedTrip _$ConnectedTripFromJson(Map<String, dynamic> json) =>
    _ConnectedTrip(
      name: json['name'] as String?,
      driver: json['driver'] as String?,
      truck: json['truck'] as String?,
      workflowState: json['workflow_state'] as String?,
      containerNumber: json['container_number'],
      containerNumberReturn: json['container_number_return'],
      uniqueIdentifierCustomsNumber:
          json['unique_identifier_customs_number'] as String?,
      tripUuid: json['trip_uuid'] as String?,
      activityLogs: json['activity_logs'] as List<dynamic>?,
      containerDetails: json['container_details'] == null
          ? null
          : ContainerDetails.fromJson(
              json['container_details'] as Map<String, dynamic>,
            ),
      localTruck: json['LocalTruck'] == null
          ? null
          : LocalTruck.fromJson(json['LocalTruck'] as Map<String, dynamic>),
      localPrinting: json['LocalPrinting'],
      isMerged: json['is_merged'] as bool?,
      mergedWith: json['merged_with'],
    );

Map<String, dynamic> _$ConnectedTripToJson(
  _ConnectedTrip instance,
) => <String, dynamic>{
  'name': instance.name,
  'driver': instance.driver,
  'truck': instance.truck,
  'workflow_state': instance.workflowState,
  'container_number': instance.containerNumber,
  'container_number_return': instance.containerNumberReturn,
  'unique_identifier_customs_number': instance.uniqueIdentifierCustomsNumber,
  'trip_uuid': instance.tripUuid,
  'activity_logs': instance.activityLogs,
  'container_details': instance.containerDetails,
  'LocalTruck': instance.localTruck,
  'LocalPrinting': instance.localPrinting,
  'is_merged': instance.isMerged,
  'merged_with': instance.mergedWith,
};
