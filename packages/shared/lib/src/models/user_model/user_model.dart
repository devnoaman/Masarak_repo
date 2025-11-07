import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    int? id,
    String? name,
    String? mobile,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    dynamic email,
    @JsonKey(name: 'two_factor_confirmed_at') dynamic twoFactorConfirmedAt,
    @JsonKey(name: 'current_team_id') dynamic currentTeamId,
    @JsonKey(name: 'profile_photo_path') dynamic profilePhotoPath,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    List<Role>? roles,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
