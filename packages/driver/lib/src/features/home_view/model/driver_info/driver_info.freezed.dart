// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DriverInfo {

 Trip? get trip; ActiveQueueIndex? get activeQueueIndex; ActiveQueueIndex? get preGateQueueIndex; String? get driverStatus;@JsonKey(name: "tripCheckpoints") List<TripCheckPoint>? get tripCheckPoints;
/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverInfoCopyWith<DriverInfo> get copyWith => _$DriverInfoCopyWithImpl<DriverInfo>(this as DriverInfo, _$identity);

  /// Serializes this DriverInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverInfo&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.activeQueueIndex, activeQueueIndex) || other.activeQueueIndex == activeQueueIndex)&&(identical(other.preGateQueueIndex, preGateQueueIndex) || other.preGateQueueIndex == preGateQueueIndex)&&(identical(other.driverStatus, driverStatus) || other.driverStatus == driverStatus)&&const DeepCollectionEquality().equals(other.tripCheckPoints, tripCheckPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,activeQueueIndex,preGateQueueIndex,driverStatus,const DeepCollectionEquality().hash(tripCheckPoints));

@override
String toString() {
  return 'DriverInfo(trip: $trip, activeQueueIndex: $activeQueueIndex, preGateQueueIndex: $preGateQueueIndex, driverStatus: $driverStatus, tripCheckPoints: $tripCheckPoints)';
}


}

/// @nodoc
abstract mixin class $DriverInfoCopyWith<$Res>  {
  factory $DriverInfoCopyWith(DriverInfo value, $Res Function(DriverInfo) _then) = _$DriverInfoCopyWithImpl;
@useResult
$Res call({
 Trip? trip, ActiveQueueIndex? activeQueueIndex, ActiveQueueIndex? preGateQueueIndex, String? driverStatus,@JsonKey(name: "tripCheckpoints") List<TripCheckPoint>? tripCheckPoints
});


$TripCopyWith<$Res>? get trip;

}
/// @nodoc
class _$DriverInfoCopyWithImpl<$Res>
    implements $DriverInfoCopyWith<$Res> {
  _$DriverInfoCopyWithImpl(this._self, this._then);

  final DriverInfo _self;
  final $Res Function(DriverInfo) _then;

/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trip = freezed,Object? activeQueueIndex = freezed,Object? preGateQueueIndex = freezed,Object? driverStatus = freezed,Object? tripCheckPoints = freezed,}) {
  return _then(_self.copyWith(
trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as Trip?,activeQueueIndex: freezed == activeQueueIndex ? _self.activeQueueIndex : activeQueueIndex // ignore: cast_nullable_to_non_nullable
as ActiveQueueIndex?,preGateQueueIndex: freezed == preGateQueueIndex ? _self.preGateQueueIndex : preGateQueueIndex // ignore: cast_nullable_to_non_nullable
as ActiveQueueIndex?,driverStatus: freezed == driverStatus ? _self.driverStatus : driverStatus // ignore: cast_nullable_to_non_nullable
as String?,tripCheckPoints: freezed == tripCheckPoints ? _self.tripCheckPoints : tripCheckPoints // ignore: cast_nullable_to_non_nullable
as List<TripCheckPoint>?,
  ));
}
/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripCopyWith<$Res>? get trip {
    if (_self.trip == null) {
    return null;
  }

  return $TripCopyWith<$Res>(_self.trip!, (value) {
    return _then(_self.copyWith(trip: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriverInfo].
extension DriverInfoPatterns on DriverInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverInfo value)  $default,){
final _that = this;
switch (_that) {
case _DriverInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverInfo value)?  $default,){
final _that = this;
switch (_that) {
case _DriverInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Trip? trip,  ActiveQueueIndex? activeQueueIndex,  ActiveQueueIndex? preGateQueueIndex,  String? driverStatus, @JsonKey(name: "tripCheckpoints")  List<TripCheckPoint>? tripCheckPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverInfo() when $default != null:
return $default(_that.trip,_that.activeQueueIndex,_that.preGateQueueIndex,_that.driverStatus,_that.tripCheckPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Trip? trip,  ActiveQueueIndex? activeQueueIndex,  ActiveQueueIndex? preGateQueueIndex,  String? driverStatus, @JsonKey(name: "tripCheckpoints")  List<TripCheckPoint>? tripCheckPoints)  $default,) {final _that = this;
switch (_that) {
case _DriverInfo():
return $default(_that.trip,_that.activeQueueIndex,_that.preGateQueueIndex,_that.driverStatus,_that.tripCheckPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Trip? trip,  ActiveQueueIndex? activeQueueIndex,  ActiveQueueIndex? preGateQueueIndex,  String? driverStatus, @JsonKey(name: "tripCheckpoints")  List<TripCheckPoint>? tripCheckPoints)?  $default,) {final _that = this;
switch (_that) {
case _DriverInfo() when $default != null:
return $default(_that.trip,_that.activeQueueIndex,_that.preGateQueueIndex,_that.driverStatus,_that.tripCheckPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverInfo implements DriverInfo {
   _DriverInfo({this.trip, this.activeQueueIndex, this.preGateQueueIndex, this.driverStatus, @JsonKey(name: "tripCheckpoints") final  List<TripCheckPoint>? tripCheckPoints}): _tripCheckPoints = tripCheckPoints;
  factory _DriverInfo.fromJson(Map<String, dynamic> json) => _$DriverInfoFromJson(json);

@override final  Trip? trip;
@override final  ActiveQueueIndex? activeQueueIndex;
@override final  ActiveQueueIndex? preGateQueueIndex;
@override final  String? driverStatus;
 final  List<TripCheckPoint>? _tripCheckPoints;
@override@JsonKey(name: "tripCheckpoints") List<TripCheckPoint>? get tripCheckPoints {
  final value = _tripCheckPoints;
  if (value == null) return null;
  if (_tripCheckPoints is EqualUnmodifiableListView) return _tripCheckPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverInfoCopyWith<_DriverInfo> get copyWith => __$DriverInfoCopyWithImpl<_DriverInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverInfo&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.activeQueueIndex, activeQueueIndex) || other.activeQueueIndex == activeQueueIndex)&&(identical(other.preGateQueueIndex, preGateQueueIndex) || other.preGateQueueIndex == preGateQueueIndex)&&(identical(other.driverStatus, driverStatus) || other.driverStatus == driverStatus)&&const DeepCollectionEquality().equals(other._tripCheckPoints, _tripCheckPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,activeQueueIndex,preGateQueueIndex,driverStatus,const DeepCollectionEquality().hash(_tripCheckPoints));

@override
String toString() {
  return 'DriverInfo(trip: $trip, activeQueueIndex: $activeQueueIndex, preGateQueueIndex: $preGateQueueIndex, driverStatus: $driverStatus, tripCheckPoints: $tripCheckPoints)';
}


}

/// @nodoc
abstract mixin class _$DriverInfoCopyWith<$Res> implements $DriverInfoCopyWith<$Res> {
  factory _$DriverInfoCopyWith(_DriverInfo value, $Res Function(_DriverInfo) _then) = __$DriverInfoCopyWithImpl;
@override @useResult
$Res call({
 Trip? trip, ActiveQueueIndex? activeQueueIndex, ActiveQueueIndex? preGateQueueIndex, String? driverStatus,@JsonKey(name: "tripCheckpoints") List<TripCheckPoint>? tripCheckPoints
});


@override $TripCopyWith<$Res>? get trip;

}
/// @nodoc
class __$DriverInfoCopyWithImpl<$Res>
    implements _$DriverInfoCopyWith<$Res> {
  __$DriverInfoCopyWithImpl(this._self, this._then);

  final _DriverInfo _self;
  final $Res Function(_DriverInfo) _then;

/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trip = freezed,Object? activeQueueIndex = freezed,Object? preGateQueueIndex = freezed,Object? driverStatus = freezed,Object? tripCheckPoints = freezed,}) {
  return _then(_DriverInfo(
trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as Trip?,activeQueueIndex: freezed == activeQueueIndex ? _self.activeQueueIndex : activeQueueIndex // ignore: cast_nullable_to_non_nullable
as ActiveQueueIndex?,preGateQueueIndex: freezed == preGateQueueIndex ? _self.preGateQueueIndex : preGateQueueIndex // ignore: cast_nullable_to_non_nullable
as ActiveQueueIndex?,driverStatus: freezed == driverStatus ? _self.driverStatus : driverStatus // ignore: cast_nullable_to_non_nullable
as String?,tripCheckPoints: freezed == tripCheckPoints ? _self._tripCheckPoints : tripCheckPoints // ignore: cast_nullable_to_non_nullable
as List<TripCheckPoint>?,
  ));
}

/// Create a copy of DriverInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripCopyWith<$Res>? get trip {
    if (_self.trip == null) {
    return null;
  }

  return $TripCopyWith<$Res>(_self.trip!, (value) {
    return _then(_self.copyWith(trip: value));
  });
}
}

// dart format on
