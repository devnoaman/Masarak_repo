import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_model.freezed.dart';
part 'check_model.g.dart';

@freezed
class CheckModel with _$CheckModel {
  factory CheckModel({
    int? id,
    String? barcode,
    DateTime? checkedAt,
  }) = _CheckModel;

  factory CheckModel.fromJson(Map<String, dynamic> json) =>
      _$CheckModelFromJson(json);
}
