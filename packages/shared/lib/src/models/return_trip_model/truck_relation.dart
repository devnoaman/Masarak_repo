import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'truck_relation.freezed.dart';
part 'truck_relation.g.dart';

@freezed
abstract class TruckRelation with _$TruckRelation {
  factory TruckRelation({
    int? id,
    String? plate,
    @JsonKey(name: 'plate_slug') String? plateSlug,
    @JsonKey(name: 'abella_id') String? abellaId,
    @JsonKey(name: 'chassis_plate') dynamic chassisPlate,
    int? tare,
    String? color,
    @JsonKey(name: 'model_id') dynamic modelId,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'created_year') String? createdYear,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? status,
    City? city,
  }) = _TruckRelation;

  factory TruckRelation.fromJson(Map<String, dynamic> json) =>
      _$TruckRelationFromJson(json);
}
