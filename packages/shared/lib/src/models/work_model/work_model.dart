import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import 'pagination_raw.dart';
import 'printing_agent.dart';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

@freezed
abstract class WorkModel with _$WorkModel {
  factory WorkModel({
    PaginationRaw? paginationRaw,
    List<PrintingAgent>? printingAgent,
    @JsonKey(name: 'jobRequestsRaw') List<JobRequest>? jobRequestsRaw,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
}
