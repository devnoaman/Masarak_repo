// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckModelImpl _$$CheckModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckModelImpl(
      id: (json['id'] as num?)?.toInt(),
      barcode: json['barcode'] as String?,
      checkedAt: json['checkedAt'] == null
          ? null
          : DateTime.parse(json['checkedAt'] as String),
    );

Map<String, dynamic> _$$CheckModelImplToJson(_$CheckModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'checkedAt': instance.checkedAt?.toIso8601String(),
    };
