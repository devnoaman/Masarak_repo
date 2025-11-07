import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_raw.freezed.dart';
part 'pagination_raw.g.dart';

@freezed
abstract class PaginationRaw with _$PaginationRaw {
  factory PaginationRaw({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'total_pages') int? totalPages,
  }) = _PaginationRaw;

  factory PaginationRaw.fromJson(Map<String, dynamic> json) =>
      _$PaginationRawFromJson(json);
}
