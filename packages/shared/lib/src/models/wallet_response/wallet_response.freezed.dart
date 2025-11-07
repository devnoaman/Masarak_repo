// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletResponse {

 int? get transactionsCount; int? get deposit; int? get withdraw; WalletData? get transactionsData;
/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletResponseCopyWith<WalletResponse> get copyWith => _$WalletResponseCopyWithImpl<WalletResponse>(this as WalletResponse, _$identity);

  /// Serializes this WalletResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletResponse&&(identical(other.transactionsCount, transactionsCount) || other.transactionsCount == transactionsCount)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.withdraw, withdraw) || other.withdraw == withdraw)&&(identical(other.transactionsData, transactionsData) || other.transactionsData == transactionsData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionsCount,deposit,withdraw,transactionsData);

@override
String toString() {
  return 'WalletResponse(transactionsCount: $transactionsCount, deposit: $deposit, withdraw: $withdraw, transactionsData: $transactionsData)';
}


}

/// @nodoc
abstract mixin class $WalletResponseCopyWith<$Res>  {
  factory $WalletResponseCopyWith(WalletResponse value, $Res Function(WalletResponse) _then) = _$WalletResponseCopyWithImpl;
@useResult
$Res call({
 int? transactionsCount, int? deposit, int? withdraw, WalletData? transactionsData
});


$WalletDataCopyWith<$Res>? get transactionsData;

}
/// @nodoc
class _$WalletResponseCopyWithImpl<$Res>
    implements $WalletResponseCopyWith<$Res> {
  _$WalletResponseCopyWithImpl(this._self, this._then);

  final WalletResponse _self;
  final $Res Function(WalletResponse) _then;

/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionsCount = freezed,Object? deposit = freezed,Object? withdraw = freezed,Object? transactionsData = freezed,}) {
  return _then(_self.copyWith(
transactionsCount: freezed == transactionsCount ? _self.transactionsCount : transactionsCount // ignore: cast_nullable_to_non_nullable
as int?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int?,withdraw: freezed == withdraw ? _self.withdraw : withdraw // ignore: cast_nullable_to_non_nullable
as int?,transactionsData: freezed == transactionsData ? _self.transactionsData : transactionsData // ignore: cast_nullable_to_non_nullable
as WalletData?,
  ));
}
/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletDataCopyWith<$Res>? get transactionsData {
    if (_self.transactionsData == null) {
    return null;
  }

  return $WalletDataCopyWith<$Res>(_self.transactionsData!, (value) {
    return _then(_self.copyWith(transactionsData: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletResponse].
extension WalletResponsePatterns on WalletResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletResponse value)  $default,){
final _that = this;
switch (_that) {
case _WalletResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WalletResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? transactionsCount,  int? deposit,  int? withdraw,  WalletData? transactionsData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletResponse() when $default != null:
return $default(_that.transactionsCount,_that.deposit,_that.withdraw,_that.transactionsData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? transactionsCount,  int? deposit,  int? withdraw,  WalletData? transactionsData)  $default,) {final _that = this;
switch (_that) {
case _WalletResponse():
return $default(_that.transactionsCount,_that.deposit,_that.withdraw,_that.transactionsData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? transactionsCount,  int? deposit,  int? withdraw,  WalletData? transactionsData)?  $default,) {final _that = this;
switch (_that) {
case _WalletResponse() when $default != null:
return $default(_that.transactionsCount,_that.deposit,_that.withdraw,_that.transactionsData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletResponse implements WalletResponse {
   _WalletResponse({this.transactionsCount, this.deposit, this.withdraw, this.transactionsData});
  factory _WalletResponse.fromJson(Map<String, dynamic> json) => _$WalletResponseFromJson(json);

@override final  int? transactionsCount;
@override final  int? deposit;
@override final  int? withdraw;
@override final  WalletData? transactionsData;

/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletResponseCopyWith<_WalletResponse> get copyWith => __$WalletResponseCopyWithImpl<_WalletResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletResponse&&(identical(other.transactionsCount, transactionsCount) || other.transactionsCount == transactionsCount)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.withdraw, withdraw) || other.withdraw == withdraw)&&(identical(other.transactionsData, transactionsData) || other.transactionsData == transactionsData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionsCount,deposit,withdraw,transactionsData);

@override
String toString() {
  return 'WalletResponse(transactionsCount: $transactionsCount, deposit: $deposit, withdraw: $withdraw, transactionsData: $transactionsData)';
}


}

/// @nodoc
abstract mixin class _$WalletResponseCopyWith<$Res> implements $WalletResponseCopyWith<$Res> {
  factory _$WalletResponseCopyWith(_WalletResponse value, $Res Function(_WalletResponse) _then) = __$WalletResponseCopyWithImpl;
@override @useResult
$Res call({
 int? transactionsCount, int? deposit, int? withdraw, WalletData? transactionsData
});


@override $WalletDataCopyWith<$Res>? get transactionsData;

}
/// @nodoc
class __$WalletResponseCopyWithImpl<$Res>
    implements _$WalletResponseCopyWith<$Res> {
  __$WalletResponseCopyWithImpl(this._self, this._then);

  final _WalletResponse _self;
  final $Res Function(_WalletResponse) _then;

/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionsCount = freezed,Object? deposit = freezed,Object? withdraw = freezed,Object? transactionsData = freezed,}) {
  return _then(_WalletResponse(
transactionsCount: freezed == transactionsCount ? _self.transactionsCount : transactionsCount // ignore: cast_nullable_to_non_nullable
as int?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int?,withdraw: freezed == withdraw ? _self.withdraw : withdraw // ignore: cast_nullable_to_non_nullable
as int?,transactionsData: freezed == transactionsData ? _self.transactionsData : transactionsData // ignore: cast_nullable_to_non_nullable
as WalletData?,
  ));
}

/// Create a copy of WalletResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletDataCopyWith<$Res>? get transactionsData {
    if (_self.transactionsData == null) {
    return null;
  }

  return $WalletDataCopyWith<$Res>(_self.transactionsData!, (value) {
    return _then(_self.copyWith(transactionsData: value));
  });
}
}

// dart format on
