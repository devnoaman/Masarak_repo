// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pivot _$PivotFromJson(Map<String, dynamic> json) => _Pivot(
  modelId: (json['model_id'] as num?)?.toInt(),
  roleId: (json['role_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$PivotToJson(_Pivot instance) => <String, dynamic>{
  'model_id': instance.modelId,
  'role_id': instance.roleId,
};
