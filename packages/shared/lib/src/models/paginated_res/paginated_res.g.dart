// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedRes<T> _$PaginatedResFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PaginatedRes<T>(
  currentPage: (json['current_page'] as num?)?.toInt(),
  nextPageUrl: json['next_page_url'] as String?,
  path: json['path'] as String?,
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
  perPage: (json['per_page'] as num?)?.toInt(),
  prevPageUrl: json['prev_page_url'],
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaginatedResToJson<T>(
  _PaginatedRes<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'next_page_url': instance.nextPageUrl,
  'path': instance.path,
  'data': instance.data.map(toJsonT).toList(),
  'per_page': instance.perPage,
  'prev_page_url': instance.prevPageUrl,
  'to': instance.to,
  'total': instance.total,
};
