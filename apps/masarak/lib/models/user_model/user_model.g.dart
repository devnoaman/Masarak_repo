// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'],
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'roles': instance.roles,
      'time': instance.time,
    };
