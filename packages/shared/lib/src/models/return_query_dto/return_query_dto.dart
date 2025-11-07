import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_query_dto.freezed.dart';
part 'return_query_dto.g.dart';

@freezed
abstract class ReturnQueryDto with _$ReturnQueryDto {
  factory ReturnQueryDto({
    @JsonKey(name: 'containerNumber') String? containerNumber,
    String? driver,
    String? truck,
    String? berth,
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _ReturnQueryDto;

  factory ReturnQueryDto.fromJson(Map<String, dynamic> json) =>
      _$ReturnQueryDtoFromJson(json);
}
