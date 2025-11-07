import 'package:json_annotation/json_annotation.dart';

part 'pivot.g.dart';

@JsonSerializable()
class Pivot {
  @JsonKey(name: 'model_id')
  int? modelId;
  @JsonKey(name: 'role_id')
  int? roleId;

  Pivot({this.modelId, this.roleId});

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);

  Pivot copyWith({int? modelId, int? roleId}) {
    return Pivot(
      modelId: modelId ?? this.modelId,
      roleId: roleId ?? this.roleId,
    );
  }
}
