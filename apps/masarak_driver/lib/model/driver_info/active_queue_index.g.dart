// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_queue_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveQueueIndex _$ActiveQueueIndexFromJson(Map<String, dynamic> json) =>
    ActiveQueueIndex(
      tripName: json['trip_name'] as String?,
      jobRequest: json['job_request'] as String?,
      truck: json['truck'] as String?,
      truckNumber: json['truck_number'] as String?,
      berth: json['berth'] as String?,
      berthName: json['berth_name'] as String?,
      containerNumber: json['container_number'] as String?,
      containerNumberReturn: json['container_number_return'],
      driver: json['driver'] as String?,
      creation: json['creation'] as String?,
      transportationAgent: json['transportation_agent'] as String?,
      globalQueueNumber: (json['global_queue_number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ActiveQueueIndexToJson(ActiveQueueIndex instance) =>
    <String, dynamic>{
      'trip_name': instance.tripName,
      'job_request': instance.jobRequest,
      'truck': instance.truck,
      'truck_number': instance.truckNumber,
      'berth': instance.berth,
      'berth_name': instance.berthName,
      'container_number': instance.containerNumber,
      'container_number_return': instance.containerNumberReturn,
      'driver': instance.driver,
      'creation': instance.creation,
      'transportation_agent': instance.transportationAgent,
      'global_queue_number': instance.globalQueueNumber,
    };
