// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  nameAr: json['name_ar'] as String?,
  state: json['state'] as String?,
  country: json['country'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_ar': instance.nameAr,
  'state': instance.state,
  'country': instance.country,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
