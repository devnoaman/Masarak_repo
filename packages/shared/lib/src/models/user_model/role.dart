import 'package:freezed_annotation/freezed_annotation.dart';

import 'pivot.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
abstract class Role with _$Role {
  factory Role({
    int? id,
    String? name,
    @JsonKey(name: 'guard_name') String? guardName,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Pivot? pivot,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
