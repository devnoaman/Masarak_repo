import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta.dart';

part 'transaction_data.freezed.dart';
part 'transaction_data.g.dart';

@freezed
abstract class TransactionData with _$TransactionData {
  factory TransactionData({
    int? id,
    @JsonKey(name: 'payable_type') String? payableType,
    @JsonKey(name: 'payable_id') int? payableId,
    @JsonKey(name: 'wallet_id') int? walletId,
    String? type,
    String? amount,
    bool? confirmed,
    Meta? meta,
    String? uuid,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}
