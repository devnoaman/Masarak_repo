// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  mobile: json['mobile'] as String?,
  emailVerifiedAt: json['email_verified_at'] == null
      ? null
      : DateTime.parse(json['email_verified_at'] as String),
  email: json['email'],
  twoFactorConfirmedAt: json['two_factor_confirmed_at'],
  currentTeamId: json['current_team_id'],
  profilePhotoPath: json['profile_photo_path'],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  profilePhotoUrl: json['profile_photo_url'] as String?,
  roles: (json['roles'] as List<dynamic>?)
      ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'email': instance.email,
      'two_factor_confirmed_at': instance.twoFactorConfirmedAt,
      'current_team_id': instance.currentTeamId,
      'profile_photo_path': instance.profilePhotoPath,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'profile_photo_url': instance.profilePhotoUrl,
      'roles': instance.roles,
    };
