// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckPointStateImpl _$$CheckPointStateImplFromJson(
  Map<String, dynamic> json,
) => _$CheckPointStateImpl(
  errorMessage: json['errorMessage'] as String?,
  isLoading: json['isLoading'] as bool? ?? false,
  checkPoints:
      (json['checkPoints'] as List<dynamic>?)
          ?.map((e) => CheckPoint.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CheckPointStateImplToJson(
  _$CheckPointStateImpl instance,
) => <String, dynamic>{
  'errorMessage': instance.errorMessage,
  'isLoading': instance.isLoading,
  'checkPoints': instance.checkPoints,
};
