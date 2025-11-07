// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printing_agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrintingAgent _$PrintingAgentFromJson(Map<String, dynamic> json) =>
    _PrintingAgent(
      value: (json['value'] as num?)?.toInt(),
      label: json['label'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PrintingAgentToJson(_PrintingAgent instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
    };
