import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/models/wallet_data/wallet_data.dart';

import '../transaction_data/transaction_data.dart';

part 'wallet_response.freezed.dart';
part 'wallet_response.g.dart';

@freezed
abstract class WalletResponse with _$WalletResponse {
  factory WalletResponse({
    int? transactionsCount,
    int? deposit,
    int? withdraw,
    WalletData? transactionsData,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);
}
