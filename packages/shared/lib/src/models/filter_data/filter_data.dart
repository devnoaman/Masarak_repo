import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_data.freezed.dart';
part 'filter_data.g.dart';

@freezed
abstract class FilterData with _$FilterData {
  const FilterData._();
  factory FilterData({String? orderNumber, String? containerNumber}) =
      _FilterData;

  factory FilterData.fromJson(Map<String, dynamic> json) =>
      _$FilterDataFromJson(json);
  // bool get isEmpty =>
  //     !toJson().values.every((e) => e != null && e.toString().isNotEmpty);
  bool get isEmpty => !toJson().values.any((e) => e != null);
}
