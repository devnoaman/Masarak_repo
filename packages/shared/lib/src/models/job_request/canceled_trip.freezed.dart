// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'canceled_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CanceledTrip {

 String? get name;@JsonKey(name: 'trip_uuid') String? get tripUuid;
/// Create a copy of CanceledTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanceledTripCopyWith<CanceledTrip> get copyWith => _$CanceledTripCopyWithImpl<CanceledTrip>(this as CanceledTrip, _$identity);

  /// Serializes this CanceledTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledTrip&&(identical(other.name, name) || other.name == name)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,tripUuid);

@override
String toString() {
  return 'CanceledTrip(name: $name, tripUuid: $tripUuid)';
}


}

/// @nodoc
abstract mixin class $CanceledTripCopyWith<$Res>  {
  factory $CanceledTripCopyWith(CanceledTrip value, $Res Function(CanceledTrip) _then) = _$CanceledTripCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'trip_uuid') String? tripUuid
});




}
/// @nodoc
class _$CanceledTripCopyWithImpl<$Res>
    implements $CanceledTripCopyWith<$Res> {
  _$CanceledTripCopyWithImpl(this._self, this._then);

  final CanceledTrip _self;
  final $Res Function(CanceledTrip) _then;

/// Create a copy of CanceledTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? tripUuid = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CanceledTrip].
extension CanceledTripPatterns on CanceledTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CanceledTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CanceledTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CanceledTrip value)  $default,){
final _that = this;
switch (_that) {
case _CanceledTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CanceledTrip value)?  $default,){
final _that = this;
switch (_that) {
case _CanceledTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'trip_uuid')  String? tripUuid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CanceledTrip() when $default != null:
return $default(_that.name,_that.tripUuid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'trip_uuid')  String? tripUuid)  $default,) {final _that = this;
switch (_that) {
case _CanceledTrip():
return $default(_that.name,_that.tripUuid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'trip_uuid')  String? tripUuid)?  $default,) {final _that = this;
switch (_that) {
case _CanceledTrip() when $default != null:
return $default(_that.name,_that.tripUuid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CanceledTrip implements CanceledTrip {
   _CanceledTrip({this.name, @JsonKey(name: 'trip_uuid') this.tripUuid});
  factory _CanceledTrip.fromJson(Map<String, dynamic> json) => _$CanceledTripFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'trip_uuid') final  String? tripUuid;

/// Create a copy of CanceledTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanceledTripCopyWith<_CanceledTrip> get copyWith => __$CanceledTripCopyWithImpl<_CanceledTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanceledTripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CanceledTrip&&(identical(other.name, name) || other.name == name)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,tripUuid);

@override
String toString() {
  return 'CanceledTrip(name: $name, tripUuid: $tripUuid)';
}


}

/// @nodoc
abstract mixin class _$CanceledTripCopyWith<$Res> implements $CanceledTripCopyWith<$Res> {
  factory _$CanceledTripCopyWith(_CanceledTrip value, $Res Function(_CanceledTrip) _then) = __$CanceledTripCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'trip_uuid') String? tripUuid
});




}
/// @nodoc
class __$CanceledTripCopyWithImpl<$Res>
    implements _$CanceledTripCopyWith<$Res> {
  __$CanceledTripCopyWithImpl(this._self, this._then);

  final _CanceledTrip _self;
  final $Res Function(_CanceledTrip) _then;

/// Create a copy of CanceledTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? tripUuid = freezed,}) {
  return _then(_CanceledTrip(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
