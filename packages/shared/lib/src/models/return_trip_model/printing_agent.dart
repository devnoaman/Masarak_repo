import 'package:freezed_annotation/freezed_annotation.dart';

part 'printing_agent.freezed.dart';
part 'printing_agent.g.dart';

@freezed
abstract class PrintingAgent with _$PrintingAgent {
  factory PrintingAgent({
    int? id,
    String? name,
    String? mobile,
    String? address,
    @JsonKey(name: 'abella_id') dynamic abellaId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _PrintingAgent;

  factory PrintingAgent.fromJson(Map<String, dynamic> json) =>
      _$PrintingAgentFromJson(json);
}
