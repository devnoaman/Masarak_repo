// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'returns_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnsFilterData {

@JsonKey(name: 'trip_name') String? get tripName; String? get containerNumber; Map<String, dynamic>? get driver; Map<String, dynamic>? get truck; Map<String, dynamic>? get berth;
/// Create a copy of ReturnsFilterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnsFilterDataCopyWith<ReturnsFilterData> get copyWith => _$ReturnsFilterDataCopyWithImpl<ReturnsFilterData>(this as ReturnsFilterData, _$identity);

  /// Serializes this ReturnsFilterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnsFilterData&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&const DeepCollectionEquality().equals(other.driver, driver)&&const DeepCollectionEquality().equals(other.truck, truck)&&const DeepCollectionEquality().equals(other.berth, berth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripName,containerNumber,const DeepCollectionEquality().hash(driver),const DeepCollectionEquality().hash(truck),const DeepCollectionEquality().hash(berth));

@override
String toString() {
  return 'ReturnsFilterData(tripName: $tripName, containerNumber: $containerNumber, driver: $driver, truck: $truck, berth: $berth)';
}


}

/// @nodoc
abstract mixin class $ReturnsFilterDataCopyWith<$Res>  {
  factory $ReturnsFilterDataCopyWith(ReturnsFilterData value, $Res Function(ReturnsFilterData) _then) = _$ReturnsFilterDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'trip_name') String? tripName, String? containerNumber, Map<String, dynamic>? driver, Map<String, dynamic>? truck, Map<String, dynamic>? berth
});




}
/// @nodoc
class _$ReturnsFilterDataCopyWithImpl<$Res>
    implements $ReturnsFilterDataCopyWith<$Res> {
  _$ReturnsFilterDataCopyWithImpl(this._self, this._then);

  final ReturnsFilterData _self;
  final $Res Function(ReturnsFilterData) _then;

/// Create a copy of ReturnsFilterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripName = freezed,Object? containerNumber = freezed,Object? driver = freezed,Object? truck = freezed,Object? berth = freezed,}) {
  return _then(_self.copyWith(
tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnsFilterData].
extension ReturnsFilterDataPatterns on ReturnsFilterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnsFilterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnsFilterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnsFilterData value)  $default,){
final _that = this;
switch (_that) {
case _ReturnsFilterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnsFilterData value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnsFilterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_name')  String? tripName,  String? containerNumber,  Map<String, dynamic>? driver,  Map<String, dynamic>? truck,  Map<String, dynamic>? berth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnsFilterData() when $default != null:
return $default(_that.tripName,_that.containerNumber,_that.driver,_that.truck,_that.berth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_name')  String? tripName,  String? containerNumber,  Map<String, dynamic>? driver,  Map<String, dynamic>? truck,  Map<String, dynamic>? berth)  $default,) {final _that = this;
switch (_that) {
case _ReturnsFilterData():
return $default(_that.tripName,_that.containerNumber,_that.driver,_that.truck,_that.berth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'trip_name')  String? tripName,  String? containerNumber,  Map<String, dynamic>? driver,  Map<String, dynamic>? truck,  Map<String, dynamic>? berth)?  $default,) {final _that = this;
switch (_that) {
case _ReturnsFilterData() when $default != null:
return $default(_that.tripName,_that.containerNumber,_that.driver,_that.truck,_that.berth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReturnsFilterData extends ReturnsFilterData {
   _ReturnsFilterData({@JsonKey(name: 'trip_name') this.tripName, this.containerNumber, final  Map<String, dynamic>? driver, final  Map<String, dynamic>? truck, final  Map<String, dynamic>? berth}): _driver = driver,_truck = truck,_berth = berth,super._();
  factory _ReturnsFilterData.fromJson(Map<String, dynamic> json) => _$ReturnsFilterDataFromJson(json);

@override@JsonKey(name: 'trip_name') final  String? tripName;
@override final  String? containerNumber;
 final  Map<String, dynamic>? _driver;
@override Map<String, dynamic>? get driver {
  final value = _driver;
  if (value == null) return null;
  if (_driver is EqualUnmodifiableMapView) return _driver;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _truck;
@override Map<String, dynamic>? get truck {
  final value = _truck;
  if (value == null) return null;
  if (_truck is EqualUnmodifiableMapView) return _truck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _berth;
@override Map<String, dynamic>? get berth {
  final value = _berth;
  if (value == null) return null;
  if (_berth is EqualUnmodifiableMapView) return _berth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ReturnsFilterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnsFilterDataCopyWith<_ReturnsFilterData> get copyWith => __$ReturnsFilterDataCopyWithImpl<_ReturnsFilterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReturnsFilterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnsFilterData&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&const DeepCollectionEquality().equals(other._driver, _driver)&&const DeepCollectionEquality().equals(other._truck, _truck)&&const DeepCollectionEquality().equals(other._berth, _berth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripName,containerNumber,const DeepCollectionEquality().hash(_driver),const DeepCollectionEquality().hash(_truck),const DeepCollectionEquality().hash(_berth));

@override
String toString() {
  return 'ReturnsFilterData(tripName: $tripName, containerNumber: $containerNumber, driver: $driver, truck: $truck, berth: $berth)';
}


}

/// @nodoc
abstract mixin class _$ReturnsFilterDataCopyWith<$Res> implements $ReturnsFilterDataCopyWith<$Res> {
  factory _$ReturnsFilterDataCopyWith(_ReturnsFilterData value, $Res Function(_ReturnsFilterData) _then) = __$ReturnsFilterDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'trip_name') String? tripName, String? containerNumber, Map<String, dynamic>? driver, Map<String, dynamic>? truck, Map<String, dynamic>? berth
});




}
/// @nodoc
class __$ReturnsFilterDataCopyWithImpl<$Res>
    implements _$ReturnsFilterDataCopyWith<$Res> {
  __$ReturnsFilterDataCopyWithImpl(this._self, this._then);

  final _ReturnsFilterData _self;
  final $Res Function(_ReturnsFilterData) _then;

/// Create a copy of ReturnsFilterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripName = freezed,Object? containerNumber = freezed,Object? driver = freezed,Object? truck = freezed,Object? berth = freezed,}) {
  return _then(_ReturnsFilterData(
tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self._driver : driver // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,truck: freezed == truck ? _self._truck : truck // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,berth: freezed == berth ? _self._berth : berth // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
