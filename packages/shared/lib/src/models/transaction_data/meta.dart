import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
abstract class Meta with _$Meta {
  factory Meta({
    String? name,
    String? type,
    String? truck,
    String? driver,
    @JsonKey(name: 'by_user') int? byUser,
    @JsonKey(name: 'trip_name') String? tripName,
    dynamic contariner,
    @JsonKey(name: 'max_credit') int? maxCredit,
    String? description,
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'after_balance') int? afterBalance,
    @JsonKey(name: 'before_balance') int? beforeBalance,
    @JsonKey(name: 'return_container') String? returnContainer,
    @JsonKey(name: 'masarak_commission') int? masarakCommission,
    @JsonKey(name: 'second_return_container') String? secondReturnContainer,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
