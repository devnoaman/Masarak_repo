// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletResponse _$WalletResponseFromJson(Map<String, dynamic> json) =>
    _WalletResponse(
      transactionsCount: (json['transactionsCount'] as num?)?.toInt(),
      deposit: (json['deposit'] as num?)?.toInt(),
      withdraw: (json['withdraw'] as num?)?.toInt(),
      transactionsData: json['transactionsData'] == null
          ? null
          : WalletData.fromJson(
              json['transactionsData'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$WalletResponseToJson(_WalletResponse instance) =>
    <String, dynamic>{
      'transactionsCount': instance.transactionsCount,
      'deposit': instance.deposit,
      'withdraw': instance.withdraw,
      'transactionsData': instance.transactionsData,
    };
