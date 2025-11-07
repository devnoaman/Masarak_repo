// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_query_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnQueryDto _$ReturnQueryDtoFromJson(Map<String, dynamic> json) =>
    _ReturnQueryDto(
      containerNumber: json['containerNumber'] as String?,
      driver: json['driver'] as String?,
      truck: json['truck'] as String?,
      berth: json['berth'] as String?,
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReturnQueryDtoToJson(_ReturnQueryDto instance) =>
    <String, dynamic>{
      'containerNumber': instance.containerNumber,
      'driver': instance.driver,
      'truck': instance.truck,
      'berth': instance.berth,
      'page': instance.page,
      'per_page': instance.perPage,
    };
