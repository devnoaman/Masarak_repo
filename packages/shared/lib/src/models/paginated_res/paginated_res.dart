import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_res.freezed.dart';
part 'paginated_res.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginatedRes<T> with _$PaginatedRes<T> {
  factory PaginatedRes({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @Default([]) List<T> data,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _PaginatedRes<T>;

  // factory PaginatedRes.fromJson(Map<String, dynamic> json) =>
  //     _$PaginatedResFromJson(json);
  factory PaginatedRes.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT, // <--- Add this parameter
  ) => _$PaginatedResFromJson<T>(json, fromJsonT);
}
