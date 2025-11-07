// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectedTrip {

 String? get name; String? get driver; String? get truck;@JsonKey(name: 'workflow_state') String? get workflowState;@JsonKey(name: 'container_number') dynamic get containerNumber;@JsonKey(name: 'container_number_return') dynamic get containerNumberReturn;@JsonKey(name: 'unique_identifier_customs_number') String? get uniqueIdentifierCustomsNumber;@JsonKey(name: 'trip_uuid') String? get tripUuid;@JsonKey(name: 'activity_logs') List<dynamic>? get activityLogs;@JsonKey(name: 'container_details') ContainerDetails? get containerDetails;@JsonKey(name: 'LocalTruck') LocalTruck? get localTruck;@JsonKey(name: 'LocalPrinting') dynamic get localPrinting;@JsonKey(name: 'is_merged') bool? get isMerged;@JsonKey(name: 'merged_with') dynamic get mergedWith;
/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedTripCopyWith<ConnectedTrip> get copyWith => _$ConnectedTripCopyWithImpl<ConnectedTrip>(this as ConnectedTrip, _$identity);

  /// Serializes this ConnectedTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedTrip&&(identical(other.name, name) || other.name == name)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.containerNumberReturn, containerNumberReturn)&&(identical(other.uniqueIdentifierCustomsNumber, uniqueIdentifierCustomsNumber) || other.uniqueIdentifierCustomsNumber == uniqueIdentifierCustomsNumber)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&const DeepCollectionEquality().equals(other.activityLogs, activityLogs)&&(identical(other.containerDetails, containerDetails) || other.containerDetails == containerDetails)&&(identical(other.localTruck, localTruck) || other.localTruck == localTruck)&&const DeepCollectionEquality().equals(other.localPrinting, localPrinting)&&(identical(other.isMerged, isMerged) || other.isMerged == isMerged)&&const DeepCollectionEquality().equals(other.mergedWith, mergedWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,driver,truck,workflowState,const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(containerNumberReturn),uniqueIdentifierCustomsNumber,tripUuid,const DeepCollectionEquality().hash(activityLogs),containerDetails,localTruck,const DeepCollectionEquality().hash(localPrinting),isMerged,const DeepCollectionEquality().hash(mergedWith));

@override
String toString() {
  return 'ConnectedTrip(name: $name, driver: $driver, truck: $truck, workflowState: $workflowState, containerNumber: $containerNumber, containerNumberReturn: $containerNumberReturn, uniqueIdentifierCustomsNumber: $uniqueIdentifierCustomsNumber, tripUuid: $tripUuid, activityLogs: $activityLogs, containerDetails: $containerDetails, localTruck: $localTruck, localPrinting: $localPrinting, isMerged: $isMerged, mergedWith: $mergedWith)';
}


}

/// @nodoc
abstract mixin class $ConnectedTripCopyWith<$Res>  {
  factory $ConnectedTripCopyWith(ConnectedTrip value, $Res Function(ConnectedTrip) _then) = _$ConnectedTripCopyWithImpl;
@useResult
$Res call({
 String? name, String? driver, String? truck,@JsonKey(name: 'workflow_state') String? workflowState,@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'container_number_return') dynamic containerNumberReturn,@JsonKey(name: 'unique_identifier_customs_number') String? uniqueIdentifierCustomsNumber,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'activity_logs') List<dynamic>? activityLogs,@JsonKey(name: 'container_details') ContainerDetails? containerDetails,@JsonKey(name: 'LocalTruck') LocalTruck? localTruck,@JsonKey(name: 'LocalPrinting') dynamic localPrinting,@JsonKey(name: 'is_merged') bool? isMerged,@JsonKey(name: 'merged_with') dynamic mergedWith
});


$ContainerDetailsCopyWith<$Res>? get containerDetails;$LocalTruckCopyWith<$Res>? get localTruck;

}
/// @nodoc
class _$ConnectedTripCopyWithImpl<$Res>
    implements $ConnectedTripCopyWith<$Res> {
  _$ConnectedTripCopyWithImpl(this._self, this._then);

  final ConnectedTrip _self;
  final $Res Function(ConnectedTrip) _then;

/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? driver = freezed,Object? truck = freezed,Object? workflowState = freezed,Object? containerNumber = freezed,Object? containerNumberReturn = freezed,Object? uniqueIdentifierCustomsNumber = freezed,Object? tripUuid = freezed,Object? activityLogs = freezed,Object? containerDetails = freezed,Object? localTruck = freezed,Object? localPrinting = freezed,Object? isMerged = freezed,Object? mergedWith = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumberReturn: freezed == containerNumberReturn ? _self.containerNumberReturn : containerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,uniqueIdentifierCustomsNumber: freezed == uniqueIdentifierCustomsNumber ? _self.uniqueIdentifierCustomsNumber : uniqueIdentifierCustomsNumber // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,activityLogs: freezed == activityLogs ? _self.activityLogs : activityLogs // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,containerDetails: freezed == containerDetails ? _self.containerDetails : containerDetails // ignore: cast_nullable_to_non_nullable
as ContainerDetails?,localTruck: freezed == localTruck ? _self.localTruck : localTruck // ignore: cast_nullable_to_non_nullable
as LocalTruck?,localPrinting: freezed == localPrinting ? _self.localPrinting : localPrinting // ignore: cast_nullable_to_non_nullable
as dynamic,isMerged: freezed == isMerged ? _self.isMerged : isMerged // ignore: cast_nullable_to_non_nullable
as bool?,mergedWith: freezed == mergedWith ? _self.mergedWith : mergedWith // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContainerDetailsCopyWith<$Res>? get containerDetails {
    if (_self.containerDetails == null) {
    return null;
  }

  return $ContainerDetailsCopyWith<$Res>(_self.containerDetails!, (value) {
    return _then(_self.copyWith(containerDetails: value));
  });
}/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalTruckCopyWith<$Res>? get localTruck {
    if (_self.localTruck == null) {
    return null;
  }

  return $LocalTruckCopyWith<$Res>(_self.localTruck!, (value) {
    return _then(_self.copyWith(localTruck: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConnectedTrip].
extension ConnectedTripPatterns on ConnectedTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectedTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectedTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectedTrip value)  $default,){
final _that = this;
switch (_that) {
case _ConnectedTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectedTrip value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectedTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? driver,  String? truck, @JsonKey(name: 'workflow_state')  String? workflowState, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'activity_logs')  List<dynamic>? activityLogs, @JsonKey(name: 'container_details')  ContainerDetails? containerDetails, @JsonKey(name: 'LocalTruck')  LocalTruck? localTruck, @JsonKey(name: 'LocalPrinting')  dynamic localPrinting, @JsonKey(name: 'is_merged')  bool? isMerged, @JsonKey(name: 'merged_with')  dynamic mergedWith)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectedTrip() when $default != null:
return $default(_that.name,_that.driver,_that.truck,_that.workflowState,_that.containerNumber,_that.containerNumberReturn,_that.uniqueIdentifierCustomsNumber,_that.tripUuid,_that.activityLogs,_that.containerDetails,_that.localTruck,_that.localPrinting,_that.isMerged,_that.mergedWith);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? driver,  String? truck, @JsonKey(name: 'workflow_state')  String? workflowState, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'activity_logs')  List<dynamic>? activityLogs, @JsonKey(name: 'container_details')  ContainerDetails? containerDetails, @JsonKey(name: 'LocalTruck')  LocalTruck? localTruck, @JsonKey(name: 'LocalPrinting')  dynamic localPrinting, @JsonKey(name: 'is_merged')  bool? isMerged, @JsonKey(name: 'merged_with')  dynamic mergedWith)  $default,) {final _that = this;
switch (_that) {
case _ConnectedTrip():
return $default(_that.name,_that.driver,_that.truck,_that.workflowState,_that.containerNumber,_that.containerNumberReturn,_that.uniqueIdentifierCustomsNumber,_that.tripUuid,_that.activityLogs,_that.containerDetails,_that.localTruck,_that.localPrinting,_that.isMerged,_that.mergedWith);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? driver,  String? truck, @JsonKey(name: 'workflow_state')  String? workflowState, @JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_number_return')  dynamic containerNumberReturn, @JsonKey(name: 'unique_identifier_customs_number')  String? uniqueIdentifierCustomsNumber, @JsonKey(name: 'trip_uuid')  String? tripUuid, @JsonKey(name: 'activity_logs')  List<dynamic>? activityLogs, @JsonKey(name: 'container_details')  ContainerDetails? containerDetails, @JsonKey(name: 'LocalTruck')  LocalTruck? localTruck, @JsonKey(name: 'LocalPrinting')  dynamic localPrinting, @JsonKey(name: 'is_merged')  bool? isMerged, @JsonKey(name: 'merged_with')  dynamic mergedWith)?  $default,) {final _that = this;
switch (_that) {
case _ConnectedTrip() when $default != null:
return $default(_that.name,_that.driver,_that.truck,_that.workflowState,_that.containerNumber,_that.containerNumberReturn,_that.uniqueIdentifierCustomsNumber,_that.tripUuid,_that.activityLogs,_that.containerDetails,_that.localTruck,_that.localPrinting,_that.isMerged,_that.mergedWith);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectedTrip implements ConnectedTrip {
   _ConnectedTrip({this.name, this.driver, this.truck, @JsonKey(name: 'workflow_state') this.workflowState, @JsonKey(name: 'container_number') this.containerNumber, @JsonKey(name: 'container_number_return') this.containerNumberReturn, @JsonKey(name: 'unique_identifier_customs_number') this.uniqueIdentifierCustomsNumber, @JsonKey(name: 'trip_uuid') this.tripUuid, @JsonKey(name: 'activity_logs') final  List<dynamic>? activityLogs, @JsonKey(name: 'container_details') this.containerDetails, @JsonKey(name: 'LocalTruck') this.localTruck, @JsonKey(name: 'LocalPrinting') this.localPrinting, @JsonKey(name: 'is_merged') this.isMerged, @JsonKey(name: 'merged_with') this.mergedWith}): _activityLogs = activityLogs;
  factory _ConnectedTrip.fromJson(Map<String, dynamic> json) => _$ConnectedTripFromJson(json);

@override final  String? name;
@override final  String? driver;
@override final  String? truck;
@override@JsonKey(name: 'workflow_state') final  String? workflowState;
@override@JsonKey(name: 'container_number') final  dynamic containerNumber;
@override@JsonKey(name: 'container_number_return') final  dynamic containerNumberReturn;
@override@JsonKey(name: 'unique_identifier_customs_number') final  String? uniqueIdentifierCustomsNumber;
@override@JsonKey(name: 'trip_uuid') final  String? tripUuid;
 final  List<dynamic>? _activityLogs;
@override@JsonKey(name: 'activity_logs') List<dynamic>? get activityLogs {
  final value = _activityLogs;
  if (value == null) return null;
  if (_activityLogs is EqualUnmodifiableListView) return _activityLogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'container_details') final  ContainerDetails? containerDetails;
@override@JsonKey(name: 'LocalTruck') final  LocalTruck? localTruck;
@override@JsonKey(name: 'LocalPrinting') final  dynamic localPrinting;
@override@JsonKey(name: 'is_merged') final  bool? isMerged;
@override@JsonKey(name: 'merged_with') final  dynamic mergedWith;

/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectedTripCopyWith<_ConnectedTrip> get copyWith => __$ConnectedTripCopyWithImpl<_ConnectedTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectedTripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectedTrip&&(identical(other.name, name) || other.name == name)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.workflowState, workflowState) || other.workflowState == workflowState)&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.containerNumberReturn, containerNumberReturn)&&(identical(other.uniqueIdentifierCustomsNumber, uniqueIdentifierCustomsNumber) || other.uniqueIdentifierCustomsNumber == uniqueIdentifierCustomsNumber)&&(identical(other.tripUuid, tripUuid) || other.tripUuid == tripUuid)&&const DeepCollectionEquality().equals(other._activityLogs, _activityLogs)&&(identical(other.containerDetails, containerDetails) || other.containerDetails == containerDetails)&&(identical(other.localTruck, localTruck) || other.localTruck == localTruck)&&const DeepCollectionEquality().equals(other.localPrinting, localPrinting)&&(identical(other.isMerged, isMerged) || other.isMerged == isMerged)&&const DeepCollectionEquality().equals(other.mergedWith, mergedWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,driver,truck,workflowState,const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(containerNumberReturn),uniqueIdentifierCustomsNumber,tripUuid,const DeepCollectionEquality().hash(_activityLogs),containerDetails,localTruck,const DeepCollectionEquality().hash(localPrinting),isMerged,const DeepCollectionEquality().hash(mergedWith));

@override
String toString() {
  return 'ConnectedTrip(name: $name, driver: $driver, truck: $truck, workflowState: $workflowState, containerNumber: $containerNumber, containerNumberReturn: $containerNumberReturn, uniqueIdentifierCustomsNumber: $uniqueIdentifierCustomsNumber, tripUuid: $tripUuid, activityLogs: $activityLogs, containerDetails: $containerDetails, localTruck: $localTruck, localPrinting: $localPrinting, isMerged: $isMerged, mergedWith: $mergedWith)';
}


}

/// @nodoc
abstract mixin class _$ConnectedTripCopyWith<$Res> implements $ConnectedTripCopyWith<$Res> {
  factory _$ConnectedTripCopyWith(_ConnectedTrip value, $Res Function(_ConnectedTrip) _then) = __$ConnectedTripCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? driver, String? truck,@JsonKey(name: 'workflow_state') String? workflowState,@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'container_number_return') dynamic containerNumberReturn,@JsonKey(name: 'unique_identifier_customs_number') String? uniqueIdentifierCustomsNumber,@JsonKey(name: 'trip_uuid') String? tripUuid,@JsonKey(name: 'activity_logs') List<dynamic>? activityLogs,@JsonKey(name: 'container_details') ContainerDetails? containerDetails,@JsonKey(name: 'LocalTruck') LocalTruck? localTruck,@JsonKey(name: 'LocalPrinting') dynamic localPrinting,@JsonKey(name: 'is_merged') bool? isMerged,@JsonKey(name: 'merged_with') dynamic mergedWith
});


@override $ContainerDetailsCopyWith<$Res>? get containerDetails;@override $LocalTruckCopyWith<$Res>? get localTruck;

}
/// @nodoc
class __$ConnectedTripCopyWithImpl<$Res>
    implements _$ConnectedTripCopyWith<$Res> {
  __$ConnectedTripCopyWithImpl(this._self, this._then);

  final _ConnectedTrip _self;
  final $Res Function(_ConnectedTrip) _then;

/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? driver = freezed,Object? truck = freezed,Object? workflowState = freezed,Object? containerNumber = freezed,Object? containerNumberReturn = freezed,Object? uniqueIdentifierCustomsNumber = freezed,Object? tripUuid = freezed,Object? activityLogs = freezed,Object? containerDetails = freezed,Object? localTruck = freezed,Object? localPrinting = freezed,Object? isMerged = freezed,Object? mergedWith = freezed,}) {
  return _then(_ConnectedTrip(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,workflowState: freezed == workflowState ? _self.workflowState : workflowState // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,containerNumberReturn: freezed == containerNumberReturn ? _self.containerNumberReturn : containerNumberReturn // ignore: cast_nullable_to_non_nullable
as dynamic,uniqueIdentifierCustomsNumber: freezed == uniqueIdentifierCustomsNumber ? _self.uniqueIdentifierCustomsNumber : uniqueIdentifierCustomsNumber // ignore: cast_nullable_to_non_nullable
as String?,tripUuid: freezed == tripUuid ? _self.tripUuid : tripUuid // ignore: cast_nullable_to_non_nullable
as String?,activityLogs: freezed == activityLogs ? _self._activityLogs : activityLogs // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,containerDetails: freezed == containerDetails ? _self.containerDetails : containerDetails // ignore: cast_nullable_to_non_nullable
as ContainerDetails?,localTruck: freezed == localTruck ? _self.localTruck : localTruck // ignore: cast_nullable_to_non_nullable
as LocalTruck?,localPrinting: freezed == localPrinting ? _self.localPrinting : localPrinting // ignore: cast_nullable_to_non_nullable
as dynamic,isMerged: freezed == isMerged ? _self.isMerged : isMerged // ignore: cast_nullable_to_non_nullable
as bool?,mergedWith: freezed == mergedWith ? _self.mergedWith : mergedWith // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContainerDetailsCopyWith<$Res>? get containerDetails {
    if (_self.containerDetails == null) {
    return null;
  }

  return $ContainerDetailsCopyWith<$Res>(_self.containerDetails!, (value) {
    return _then(_self.copyWith(containerDetails: value));
  });
}/// Create a copy of ConnectedTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalTruckCopyWith<$Res>? get localTruck {
    if (_self.localTruck == null) {
    return null;
  }

  return $LocalTruckCopyWith<$Res>(_self.localTruck!, (value) {
    return _then(_self.copyWith(localTruck: value));
  });
}
}

// dart format on
