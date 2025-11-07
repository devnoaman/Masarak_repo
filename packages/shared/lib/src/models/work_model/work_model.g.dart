// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkModel _$WorkModelFromJson(Map<String, dynamic> json) => _WorkModel(
  paginationRaw: json['paginationRaw'] == null
      ? null
      : PaginationRaw.fromJson(json['paginationRaw'] as Map<String, dynamic>),
  printingAgent: (json['printingAgent'] as List<dynamic>?)
      ?.map((e) => PrintingAgent.fromJson(e as Map<String, dynamic>))
      .toList(),
  jobRequestsRaw: (json['jobRequestsRaw'] as List<dynamic>?)
      ?.map((e) => JobRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WorkModelToJson(_WorkModel instance) =>
    <String, dynamic>{
      'paginationRaw': instance.paginationRaw,
      'printingAgent': instance.printingAgent,
      'jobRequestsRaw': instance.jobRequestsRaw,
    };
