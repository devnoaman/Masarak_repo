import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

import 'link.dart';

part 'wallet_data.freezed.dart';
part 'wallet_data.g.dart';

@freezed
abstract class WalletData with _$WalletData {
  factory WalletData({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<TransactionData>? data,

    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _WalletData;

  factory WalletData.fromJson(Map<String, dynamic> json) =>
      _$WalletDataFromJson(json);
}
