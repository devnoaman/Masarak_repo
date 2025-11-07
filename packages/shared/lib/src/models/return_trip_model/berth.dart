import 'package:freezed_annotation/freezed_annotation.dart';

part 'berth.freezed.dart';
part 'berth.g.dart';

@freezed
abstract class Berth with _$Berth {
  factory Berth({
    int? id,
    @JsonKey(name: 'abella_id') String? abellaId,
    String? port,
    @JsonKey(name: 'berth_name') String? berthName,
    @JsonKey(name: 'terminal_operator_name') String? terminalOperatorName,
    @JsonKey(name: 'cargo_types') dynamic cargoTypes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Berth;

  factory Berth.fromJson(Map<String, dynamic> json) => _$BerthFromJson(json);
}
