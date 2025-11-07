// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionData {

 int? get id;@JsonKey(name: 'payable_type') String? get payableType;@JsonKey(name: 'payable_id') int? get payableId;@JsonKey(name: 'wallet_id') int? get walletId; String? get type; String? get amount; bool? get confirmed; Meta? get meta; String? get uuid;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'deleted_at') dynamic get deletedAt;
/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDataCopyWith<TransactionData> get copyWith => _$TransactionDataCopyWithImpl<TransactionData>(this as TransactionData, _$identity);

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionData&&(identical(other.id, id) || other.id == id)&&(identical(other.payableType, payableType) || other.payableType == payableType)&&(identical(other.payableId, payableId) || other.payableId == payableId)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,payableType,payableId,walletId,type,amount,confirmed,meta,uuid,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'TransactionData(id: $id, payableType: $payableType, payableId: $payableId, walletId: $walletId, type: $type, amount: $amount, confirmed: $confirmed, meta: $meta, uuid: $uuid, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionDataCopyWith<$Res>  {
  factory $TransactionDataCopyWith(TransactionData value, $Res Function(TransactionData) _then) = _$TransactionDataCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'payable_type') String? payableType,@JsonKey(name: 'payable_id') int? payableId,@JsonKey(name: 'wallet_id') int? walletId, String? type, String? amount, bool? confirmed, Meta? meta, String? uuid,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'deleted_at') dynamic deletedAt
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$TransactionDataCopyWithImpl<$Res>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._self, this._then);

  final TransactionData _self;
  final $Res Function(TransactionData) _then;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? payableType = freezed,Object? payableId = freezed,Object? walletId = freezed,Object? type = freezed,Object? amount = freezed,Object? confirmed = freezed,Object? meta = freezed,Object? uuid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,payableType: freezed == payableType ? _self.payableType : payableType // ignore: cast_nullable_to_non_nullable
as String?,payableId: freezed == payableId ? _self.payableId : payableId // ignore: cast_nullable_to_non_nullable
as int?,walletId: freezed == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionData].
extension TransactionDataPatterns on TransactionData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionData value)  $default,){
final _that = this;
switch (_that) {
case _TransactionData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionData value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'payable_type')  String? payableType, @JsonKey(name: 'payable_id')  int? payableId, @JsonKey(name: 'wallet_id')  int? walletId,  String? type,  String? amount,  bool? confirmed,  Meta? meta,  String? uuid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'deleted_at')  dynamic deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that.id,_that.payableType,_that.payableId,_that.walletId,_that.type,_that.amount,_that.confirmed,_that.meta,_that.uuid,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'payable_type')  String? payableType, @JsonKey(name: 'payable_id')  int? payableId, @JsonKey(name: 'wallet_id')  int? walletId,  String? type,  String? amount,  bool? confirmed,  Meta? meta,  String? uuid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'deleted_at')  dynamic deletedAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionData():
return $default(_that.id,_that.payableType,_that.payableId,_that.walletId,_that.type,_that.amount,_that.confirmed,_that.meta,_that.uuid,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'payable_type')  String? payableType, @JsonKey(name: 'payable_id')  int? payableId, @JsonKey(name: 'wallet_id')  int? walletId,  String? type,  String? amount,  bool? confirmed,  Meta? meta,  String? uuid, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'deleted_at')  dynamic deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that.id,_that.payableType,_that.payableId,_that.walletId,_that.type,_that.amount,_that.confirmed,_that.meta,_that.uuid,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionData implements TransactionData {
   _TransactionData({this.id, @JsonKey(name: 'payable_type') this.payableType, @JsonKey(name: 'payable_id') this.payableId, @JsonKey(name: 'wallet_id') this.walletId, this.type, this.amount, this.confirmed, this.meta, this.uuid, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'deleted_at') this.deletedAt});
  factory _TransactionData.fromJson(Map<String, dynamic> json) => _$TransactionDataFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'payable_type') final  String? payableType;
@override@JsonKey(name: 'payable_id') final  int? payableId;
@override@JsonKey(name: 'wallet_id') final  int? walletId;
@override final  String? type;
@override final  String? amount;
@override final  bool? confirmed;
@override final  Meta? meta;
@override final  String? uuid;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'deleted_at') final  dynamic deletedAt;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDataCopyWith<_TransactionData> get copyWith => __$TransactionDataCopyWithImpl<_TransactionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionData&&(identical(other.id, id) || other.id == id)&&(identical(other.payableType, payableType) || other.payableType == payableType)&&(identical(other.payableId, payableId) || other.payableId == payableId)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,payableType,payableId,walletId,type,amount,confirmed,meta,uuid,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'TransactionData(id: $id, payableType: $payableType, payableId: $payableId, walletId: $walletId, type: $type, amount: $amount, confirmed: $confirmed, meta: $meta, uuid: $uuid, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionDataCopyWith<$Res> implements $TransactionDataCopyWith<$Res> {
  factory _$TransactionDataCopyWith(_TransactionData value, $Res Function(_TransactionData) _then) = __$TransactionDataCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'payable_type') String? payableType,@JsonKey(name: 'payable_id') int? payableId,@JsonKey(name: 'wallet_id') int? walletId, String? type, String? amount, bool? confirmed, Meta? meta, String? uuid,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'deleted_at') dynamic deletedAt
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$TransactionDataCopyWithImpl<$Res>
    implements _$TransactionDataCopyWith<$Res> {
  __$TransactionDataCopyWithImpl(this._self, this._then);

  final _TransactionData _self;
  final $Res Function(_TransactionData) _then;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? payableType = freezed,Object? payableId = freezed,Object? walletId = freezed,Object? type = freezed,Object? amount = freezed,Object? confirmed = freezed,Object? meta = freezed,Object? uuid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_TransactionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,payableType: freezed == payableType ? _self.payableType : payableType // ignore: cast_nullable_to_non_nullable
as String?,payableId: freezed == payableId ? _self.payableId : payableId // ignore: cast_nullable_to_non_nullable
as int?,walletId: freezed == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
