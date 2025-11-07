// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Role _$RoleFromJson(Map<String, dynamic> json) => _Role(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  guardName: json['guard_name'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  pivot: json['pivot'] == null
      ? null
      : Pivot.fromJson(json['pivot'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RoleToJson(_Role instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'guard_name': instance.guardName,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'pivot': instance.pivot,
};
