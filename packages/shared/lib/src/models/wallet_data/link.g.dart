// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
  url: json['url'],
  label: json['label'] as String?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};
