// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationRaw _$PaginationRawFromJson(Map<String, dynamic> json) =>
    _PaginationRaw(
      currentPage: (json['current_page'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
      totalRecords: (json['total_records'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationRawToJson(_PaginationRaw instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'page_size': instance.pageSize,
      'total_records': instance.totalRecords,
      'total_pages': instance.totalPages,
    };
