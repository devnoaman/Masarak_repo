// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Berth _$BerthFromJson(Map<String, dynamic> json) => _Berth(
  id: (json['id'] as num?)?.toInt(),
  abellaId: json['abella_id'] as String?,
  port: json['port'] as String?,
  berthName: json['berth_name'] as String?,
  terminalOperatorName: json['terminal_operator_name'] as String?,
  cargoTypes: json['cargo_types'],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$BerthToJson(_Berth instance) => <String, dynamic>{
  'id': instance.id,
  'abella_id': instance.abellaId,
  'port': instance.port,
  'berth_name': instance.berthName,
  'terminal_operator_name': instance.terminalOperatorName,
  'cargo_types': instance.cargoTypes,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
