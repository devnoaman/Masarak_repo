import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'local_truck.freezed.dart';
part 'local_truck.g.dart';

@freezed
abstract class LocalTruck with _$LocalTruck {
  factory LocalTruck({
    int? id,
    String? plate,
    @JsonKey(name: 'plate_slug') String? plateSlug,
    @JsonKey(name: 'abella_id') String? abellaId,
    @JsonKey(name: 'chassis_plate') dynamic chassisPlate,
    int? tare,
    String? color,
    @JsonKey(name: 'model_id') dynamic modelId,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'created_year') dynamic createdYear,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? status,
    City? city,
  }) = _LocalTruck;

  factory LocalTruck.fromJson(Map<String, dynamic> json) =>
      _$LocalTruckFromJson(json);
}
