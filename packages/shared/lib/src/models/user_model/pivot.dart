import 'package:freezed_annotation/freezed_annotation.dart';

part 'pivot.freezed.dart';
part 'pivot.g.dart';

@freezed
abstract class Pivot with _$Pivot {
  factory Pivot({
    @JsonKey(name: 'model_id') int? modelId,
    @JsonKey(name: 'role_id') int? roleId,
  }) = _Pivot;

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);
}
