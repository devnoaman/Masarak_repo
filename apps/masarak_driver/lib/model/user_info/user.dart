import 'package:json_annotation/json_annotation.dart';

import 'role.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? mobile;
  @JsonKey(name: 'email_verified_at')
  DateTime? emailVerifiedAt;
  dynamic email;
  @JsonKey(name: 'two_factor_confirmed_at')
  dynamic twoFactorConfirmedAt;
  @JsonKey(name: 'current_team_id')
  dynamic currentTeamId;
  @JsonKey(name: 'profile_photo_path')
  dynamic profilePhotoPath;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'profile_photo_url')
  String? profilePhotoUrl;
  List<Role>? roles;

  User({
    this.id,
    this.name,
    this.mobile,
    this.emailVerifiedAt,
    this.email,
    this.twoFactorConfirmedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.createdAt,
    this.updatedAt,
    this.profilePhotoUrl,
    this.roles,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? id,
    String? name,
    String? mobile,
    DateTime? emailVerifiedAt,
    dynamic email,
    dynamic twoFactorConfirmedAt,
    dynamic currentTeamId,
    dynamic profilePhotoPath,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? profilePhotoUrl,
    List<Role>? roles,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      mobile: mobile ?? this.mobile,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      email: email ?? this.email,
      twoFactorConfirmedAt: twoFactorConfirmedAt ?? this.twoFactorConfirmedAt,
      currentTeamId: currentTeamId ?? this.currentTeamId,
      profilePhotoPath: profilePhotoPath ?? this.profilePhotoPath,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
      roles: roles ?? this.roles,
    );
  }
}
