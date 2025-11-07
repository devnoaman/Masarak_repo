// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
)..tokenType = json['tokenType'] as String?;

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
  'tokenType': instance.tokenType,
  'user': instance.user,
};
