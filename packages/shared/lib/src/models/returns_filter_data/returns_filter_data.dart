import 'package:freezed_annotation/freezed_annotation.dart';

part 'returns_filter_data.freezed.dart';
part 'returns_filter_data.g.dart';

@freezed
abstract class ReturnsFilterData with _$ReturnsFilterData {
  const ReturnsFilterData._();
  factory ReturnsFilterData({
    @JsonKey(name: 'trip_name') String? tripName,
    String? containerNumber,
    Map<String, dynamic>? driver,
    Map<String, dynamic>? truck,
    Map<String, dynamic>? berth,
  }) = _ReturnsFilterData;

  factory ReturnsFilterData.fromJson(Map<String, dynamic> json) =>
      _$ReturnsFilterDataFromJson(json);
  // bool get isEmpty =>
  //     !toJson().values.every((e) => e != null && e.toString().isNotEmpty);
  bool get isEmpty =>
      !toJson().values.any((e) => e != null && e.toString().isNotEmpty);
}
