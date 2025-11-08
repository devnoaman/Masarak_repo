import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_filter_data.freezed.dart';
part 'transaction_filter_data.g.dart';

@freezed
abstract class TransactionFilterData with _$TransactionFilterData {
  const TransactionFilterData._();
  factory TransactionFilterData({
    DateTime? startDate,
    DateTime? endDate,
    @Default(0) int? reportType,

    @Default(1) int? page,
    @Default(10) @JsonKey(name: 'per_page') int? perPage,
  }) = _TransactionFilterData;

  factory TransactionFilterData.fromJson(Map<String, dynamic> json) =>
      _$TransactionFilterDataFromJson(json);
}
