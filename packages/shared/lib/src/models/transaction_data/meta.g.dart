// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  name: json['name'] as String?,
  type: json['type'] as String?,
  truck: json['truck'] as String?,
  driver: json['driver'] as String?,
  byUser: (json['by_user'] as num?)?.toInt(),
  tripName: json['trip_name'] as String?,
  contariner: json['contariner'],
  maxCredit: (json['max_credit'] as num?)?.toInt(),
  description: json['description'] as String?,
  productType: json['product_type'] as String?,
  afterBalance: (json['after_balance'] as num?)?.toInt(),
  beforeBalance: (json['before_balance'] as num?)?.toInt(),
  returnContainer: json['return_container'] as String?,
  masarakCommission: (json['masarak_commission'] as num?)?.toInt(),
  secondReturnContainer: json['second_return_container'] as String?,
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'truck': instance.truck,
  'driver': instance.driver,
  'by_user': instance.byUser,
  'trip_name': instance.tripName,
  'contariner': instance.contariner,
  'max_credit': instance.maxCredit,
  'description': instance.description,
  'product_type': instance.productType,
  'after_balance': instance.afterBalance,
  'before_balance': instance.beforeBalance,
  'return_container': instance.returnContainer,
  'masarak_commission': instance.masarakCommission,
  'second_return_container': instance.secondReturnContainer,
};
