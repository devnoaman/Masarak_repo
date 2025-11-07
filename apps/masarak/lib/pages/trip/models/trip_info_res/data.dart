import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_request.dart';
import 'trip.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    Trip? trip,
    @JsonKey(name: 'job_request') JobRequest? jobRequest,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
