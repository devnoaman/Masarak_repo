// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriverInfo _$DriverInfoFromJson(Map<String, dynamic> json) => _DriverInfo(
  trip: json['trip'] == null
      ? null
      : Trip.fromJson(json['trip'] as Map<String, dynamic>),
  activeQueueIndex: json['activeQueueIndex'] == null
      ? null
      : ActiveQueueIndex.fromJson(
          json['activeQueueIndex'] as Map<String, dynamic>,
        ),
  preGateQueueIndex: json['preGateQueueIndex'] == null
      ? null
      : ActiveQueueIndex.fromJson(
          json['preGateQueueIndex'] as Map<String, dynamic>,
        ),
  driverStatus: json['driverStatus'] as String?,
  tripCheckPoints: (json['tripCheckpoints'] as List<dynamic>?)
      ?.map((e) => TripCheckPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DriverInfoToJson(_DriverInfo instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'activeQueueIndex': instance.activeQueueIndex,
      'preGateQueueIndex': instance.preGateQueueIndex,
      'driverStatus': instance.driverStatus,
      'tripCheckpoints': instance.tripCheckPoints,
    };
