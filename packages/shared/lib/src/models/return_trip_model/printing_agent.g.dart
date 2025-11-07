// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printing_agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrintingAgent _$PrintingAgentFromJson(Map<String, dynamic> json) =>
    _PrintingAgent(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      address: json['address'] as String?,
      abellaId: json['abella_id'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PrintingAgentToJson(_PrintingAgent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'address': instance.address,
      'abella_id': instance.abellaId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
