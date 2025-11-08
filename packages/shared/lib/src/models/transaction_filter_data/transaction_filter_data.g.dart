// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_filter_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionFilterData _$TransactionFilterDataFromJson(
  Map<String, dynamic> json,
) => _TransactionFilterData(
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  reportType: (json['reportType'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  perPage: (json['per_page'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$TransactionFilterDataToJson(
  _TransactionFilterData instance,
) => <String, dynamic>{
  'startDate': instance.startDate?.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'reportType': instance.reportType,
  'page': instance.page,
  'per_page': instance.perPage,
};
