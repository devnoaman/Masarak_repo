// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateUserImpl _$$ValidateUserImplFromJson(Map<String, dynamic> json) =>
    _$ValidateUserImpl(
      errorMessage: json['errorMessage'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$ValidateUserImplToJson(_$ValidateUserImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'isLoading': instance.isLoading,
    };
