// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'returns_filter_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnsFilterData _$ReturnsFilterDataFromJson(Map<String, dynamic> json) =>
    _ReturnsFilterData(
      containerNumber: json['containerNumber'] as String?,
      driver: json['driver'] as Map<String, dynamic>?,
      truck: json['truck'] as Map<String, dynamic>?,
      berth: json['berth'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReturnsFilterDataToJson(_ReturnsFilterData instance) =>
    <String, dynamic>{
      'containerNumber': instance.containerNumber,
      'driver': instance.driver,
      'truck': instance.truck,
      'berth': instance.berth,
    };
