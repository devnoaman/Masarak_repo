import 'package:freezed_annotation/freezed_annotation.dart';

part 'printing_agent.freezed.dart';
part 'printing_agent.g.dart';

@freezed
abstract class PrintingAgent with _$PrintingAgent {
  factory PrintingAgent({int? value, String? label, String? description}) =
      _PrintingAgent;

  factory PrintingAgent.fromJson(Map<String, dynamic> json) =>
      _$PrintingAgentFromJson(json);
}
