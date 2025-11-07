// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContainerDetails {

@JsonKey(name: 'container_number') dynamic get containerNumber;@JsonKey(name: 'container_size') dynamic get containerSize;@JsonKey(name: 'container_type') dynamic get containerType;@JsonKey(name: 'bill_of_lading') dynamic get billOfLading;
/// Create a copy of ContainerDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContainerDetailsCopyWith<ContainerDetails> get copyWith => _$ContainerDetailsCopyWithImpl<ContainerDetails>(this as ContainerDetails, _$identity);

  /// Serializes this ContainerDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContainerDetails&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.containerSize, containerSize)&&const DeepCollectionEquality().equals(other.containerType, containerType)&&const DeepCollectionEquality().equals(other.billOfLading, billOfLading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(containerSize),const DeepCollectionEquality().hash(containerType),const DeepCollectionEquality().hash(billOfLading));

@override
String toString() {
  return 'ContainerDetails(containerNumber: $containerNumber, containerSize: $containerSize, containerType: $containerType, billOfLading: $billOfLading)';
}


}

/// @nodoc
abstract mixin class $ContainerDetailsCopyWith<$Res>  {
  factory $ContainerDetailsCopyWith(ContainerDetails value, $Res Function(ContainerDetails) _then) = _$ContainerDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'container_size') dynamic containerSize,@JsonKey(name: 'container_type') dynamic containerType,@JsonKey(name: 'bill_of_lading') dynamic billOfLading
});




}
/// @nodoc
class _$ContainerDetailsCopyWithImpl<$Res>
    implements $ContainerDetailsCopyWith<$Res> {
  _$ContainerDetailsCopyWithImpl(this._self, this._then);

  final ContainerDetails _self;
  final $Res Function(ContainerDetails) _then;

/// Create a copy of ContainerDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? containerNumber = freezed,Object? containerSize = freezed,Object? containerType = freezed,Object? billOfLading = freezed,}) {
  return _then(_self.copyWith(
containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as dynamic,containerType: freezed == containerType ? _self.containerType : containerType // ignore: cast_nullable_to_non_nullable
as dynamic,billOfLading: freezed == billOfLading ? _self.billOfLading : billOfLading // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ContainerDetails].
extension ContainerDetailsPatterns on ContainerDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContainerDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContainerDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContainerDetails value)  $default,){
final _that = this;
switch (_that) {
case _ContainerDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContainerDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ContainerDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_size')  dynamic containerSize, @JsonKey(name: 'container_type')  dynamic containerType, @JsonKey(name: 'bill_of_lading')  dynamic billOfLading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContainerDetails() when $default != null:
return $default(_that.containerNumber,_that.containerSize,_that.containerType,_that.billOfLading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_size')  dynamic containerSize, @JsonKey(name: 'container_type')  dynamic containerType, @JsonKey(name: 'bill_of_lading')  dynamic billOfLading)  $default,) {final _that = this;
switch (_that) {
case _ContainerDetails():
return $default(_that.containerNumber,_that.containerSize,_that.containerType,_that.billOfLading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'container_number')  dynamic containerNumber, @JsonKey(name: 'container_size')  dynamic containerSize, @JsonKey(name: 'container_type')  dynamic containerType, @JsonKey(name: 'bill_of_lading')  dynamic billOfLading)?  $default,) {final _that = this;
switch (_that) {
case _ContainerDetails() when $default != null:
return $default(_that.containerNumber,_that.containerSize,_that.containerType,_that.billOfLading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContainerDetails implements ContainerDetails {
   _ContainerDetails({@JsonKey(name: 'container_number') this.containerNumber, @JsonKey(name: 'container_size') this.containerSize, @JsonKey(name: 'container_type') this.containerType, @JsonKey(name: 'bill_of_lading') this.billOfLading});
  factory _ContainerDetails.fromJson(Map<String, dynamic> json) => _$ContainerDetailsFromJson(json);

@override@JsonKey(name: 'container_number') final  dynamic containerNumber;
@override@JsonKey(name: 'container_size') final  dynamic containerSize;
@override@JsonKey(name: 'container_type') final  dynamic containerType;
@override@JsonKey(name: 'bill_of_lading') final  dynamic billOfLading;

/// Create a copy of ContainerDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContainerDetailsCopyWith<_ContainerDetails> get copyWith => __$ContainerDetailsCopyWithImpl<_ContainerDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContainerDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContainerDetails&&const DeepCollectionEquality().equals(other.containerNumber, containerNumber)&&const DeepCollectionEquality().equals(other.containerSize, containerSize)&&const DeepCollectionEquality().equals(other.containerType, containerType)&&const DeepCollectionEquality().equals(other.billOfLading, billOfLading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(containerNumber),const DeepCollectionEquality().hash(containerSize),const DeepCollectionEquality().hash(containerType),const DeepCollectionEquality().hash(billOfLading));

@override
String toString() {
  return 'ContainerDetails(containerNumber: $containerNumber, containerSize: $containerSize, containerType: $containerType, billOfLading: $billOfLading)';
}


}

/// @nodoc
abstract mixin class _$ContainerDetailsCopyWith<$Res> implements $ContainerDetailsCopyWith<$Res> {
  factory _$ContainerDetailsCopyWith(_ContainerDetails value, $Res Function(_ContainerDetails) _then) = __$ContainerDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'container_number') dynamic containerNumber,@JsonKey(name: 'container_size') dynamic containerSize,@JsonKey(name: 'container_type') dynamic containerType,@JsonKey(name: 'bill_of_lading') dynamic billOfLading
});




}
/// @nodoc
class __$ContainerDetailsCopyWithImpl<$Res>
    implements _$ContainerDetailsCopyWith<$Res> {
  __$ContainerDetailsCopyWithImpl(this._self, this._then);

  final _ContainerDetails _self;
  final $Res Function(_ContainerDetails) _then;

/// Create a copy of ContainerDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? containerNumber = freezed,Object? containerSize = freezed,Object? containerType = freezed,Object? billOfLading = freezed,}) {
  return _then(_ContainerDetails(
containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as dynamic,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as dynamic,containerType: freezed == containerType ? _self.containerType : containerType // ignore: cast_nullable_to_non_nullable
as dynamic,billOfLading: freezed == billOfLading ? _self.billOfLading : billOfLading // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
