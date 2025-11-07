// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TruckRelation _$TruckRelationFromJson(Map<String, dynamic> json) =>
    _TruckRelation(
      id: (json['id'] as num?)?.toInt(),
      plate: json['plate'] as String?,
      plateSlug: json['plate_slug'] as String?,
      abellaId: json['abella_id'] as String?,
      chassisPlate: json['chassis_plate'],
      tare: (json['tare'] as num?)?.toInt(),
      color: json['color'] as String?,
      modelId: json['model_id'],
      cityId: (json['city_id'] as num?)?.toInt(),
      createdYear: json['created_year'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status: json['status'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TruckRelationToJson(_TruckRelation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plate': instance.plate,
      'plate_slug': instance.plateSlug,
      'abella_id': instance.abellaId,
      'chassis_plate': instance.chassisPlate,
      'tare': instance.tare,
      'color': instance.color,
      'model_id': instance.modelId,
      'city_id': instance.cityId,
      'created_year': instance.createdYear,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'city': instance.city,
    };
