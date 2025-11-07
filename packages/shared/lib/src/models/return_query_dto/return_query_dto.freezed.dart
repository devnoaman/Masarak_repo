// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnQueryDto {

@JsonKey(name: 'containerNumber') String? get containerNumber; String? get driver; String? get truck; String? get berth; int? get page;@JsonKey(name: 'per_page') int? get perPage;
/// Create a copy of ReturnQueryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnQueryDtoCopyWith<ReturnQueryDto> get copyWith => _$ReturnQueryDtoCopyWithImpl<ReturnQueryDto>(this as ReturnQueryDto, _$identity);

  /// Serializes this ReturnQueryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnQueryDto&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,containerNumber,driver,truck,berth,page,perPage);

@override
String toString() {
  return 'ReturnQueryDto(containerNumber: $containerNumber, driver: $driver, truck: $truck, berth: $berth, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $ReturnQueryDtoCopyWith<$Res>  {
  factory $ReturnQueryDtoCopyWith(ReturnQueryDto value, $Res Function(ReturnQueryDto) _then) = _$ReturnQueryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'containerNumber') String? containerNumber, String? driver, String? truck, String? berth, int? page,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class _$ReturnQueryDtoCopyWithImpl<$Res>
    implements $ReturnQueryDtoCopyWith<$Res> {
  _$ReturnQueryDtoCopyWithImpl(this._self, this._then);

  final ReturnQueryDto _self;
  final $Res Function(ReturnQueryDto) _then;

/// Create a copy of ReturnQueryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? containerNumber = freezed,Object? driver = freezed,Object? truck = freezed,Object? berth = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnQueryDto].
extension ReturnQueryDtoPatterns on ReturnQueryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnQueryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnQueryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnQueryDto value)  $default,){
final _that = this;
switch (_that) {
case _ReturnQueryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnQueryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnQueryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'containerNumber')  String? containerNumber,  String? driver,  String? truck,  String? berth,  int? page, @JsonKey(name: 'per_page')  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnQueryDto() when $default != null:
return $default(_that.containerNumber,_that.driver,_that.truck,_that.berth,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'containerNumber')  String? containerNumber,  String? driver,  String? truck,  String? berth,  int? page, @JsonKey(name: 'per_page')  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _ReturnQueryDto():
return $default(_that.containerNumber,_that.driver,_that.truck,_that.berth,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'containerNumber')  String? containerNumber,  String? driver,  String? truck,  String? berth,  int? page, @JsonKey(name: 'per_page')  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _ReturnQueryDto() when $default != null:
return $default(_that.containerNumber,_that.driver,_that.truck,_that.berth,_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReturnQueryDto implements ReturnQueryDto {
   _ReturnQueryDto({@JsonKey(name: 'containerNumber') this.containerNumber, this.driver, this.truck, this.berth, this.page, @JsonKey(name: 'per_page') this.perPage});
  factory _ReturnQueryDto.fromJson(Map<String, dynamic> json) => _$ReturnQueryDtoFromJson(json);

@override@JsonKey(name: 'containerNumber') final  String? containerNumber;
@override final  String? driver;
@override final  String? truck;
@override final  String? berth;
@override final  int? page;
@override@JsonKey(name: 'per_page') final  int? perPage;

/// Create a copy of ReturnQueryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnQueryDtoCopyWith<_ReturnQueryDto> get copyWith => __$ReturnQueryDtoCopyWithImpl<_ReturnQueryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReturnQueryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnQueryDto&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,containerNumber,driver,truck,berth,page,perPage);

@override
String toString() {
  return 'ReturnQueryDto(containerNumber: $containerNumber, driver: $driver, truck: $truck, berth: $berth, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$ReturnQueryDtoCopyWith<$Res> implements $ReturnQueryDtoCopyWith<$Res> {
  factory _$ReturnQueryDtoCopyWith(_ReturnQueryDto value, $Res Function(_ReturnQueryDto) _then) = __$ReturnQueryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'containerNumber') String? containerNumber, String? driver, String? truck, String? berth, int? page,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class __$ReturnQueryDtoCopyWithImpl<$Res>
    implements _$ReturnQueryDtoCopyWith<$Res> {
  __$ReturnQueryDtoCopyWithImpl(this._self, this._then);

  final _ReturnQueryDto _self;
  final $Res Function(_ReturnQueryDto) _then;

/// Create a copy of ReturnQueryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? containerNumber = freezed,Object? driver = freezed,Object? truck = freezed,Object? berth = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_ReturnQueryDto(
containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
