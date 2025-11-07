// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    _TransactionData(
      id: (json['id'] as num?)?.toInt(),
      payableType: json['payable_type'] as String?,
      payableId: (json['payable_id'] as num?)?.toInt(),
      walletId: (json['wallet_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      amount: json['amount'] as String?,
      confirmed: json['confirmed'] as bool?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      uuid: json['uuid'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$TransactionDataToJson(_TransactionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payable_type': instance.payableType,
      'payable_id': instance.payableId,
      'wallet_id': instance.walletId,
      'type': instance.type,
      'amount': instance.amount,
      'confirmed': instance.confirmed,
      'meta': instance.meta,
      'uuid': instance.uuid,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };
