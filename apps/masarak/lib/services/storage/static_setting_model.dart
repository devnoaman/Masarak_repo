import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_setting_model.freezed.dart';

part 'static_setting_model.g.dart';

@freezed
abstract class StaticSettingModel with _$StaticSettingModel {
  const factory StaticSettingModel({
    required String key,
    required String value,
    required String id,
  }) = _StaticSettingModel;

  factory StaticSettingModel.fromJson(Map<String, Object?> json) =>
      _$StaticSettingModelFromJson(json);
}
