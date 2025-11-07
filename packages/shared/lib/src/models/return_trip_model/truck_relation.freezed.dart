// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'truck_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TruckRelation {

 int? get id; String? get plate;@JsonKey(name: 'plate_slug') String? get plateSlug;@JsonKey(name: 'abella_id') String? get abellaId;@JsonKey(name: 'chassis_plate') dynamic get chassisPlate; int? get tare; String? get color;@JsonKey(name: 'model_id') dynamic get modelId;@JsonKey(name: 'city_id') int? get cityId;@JsonKey(name: 'created_year') String? get createdYear;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt; String? get status; City? get city;
/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TruckRelationCopyWith<TruckRelation> get copyWith => _$TruckRelationCopyWithImpl<TruckRelation>(this as TruckRelation, _$identity);

  /// Serializes this TruckRelation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TruckRelation&&(identical(other.id, id) || other.id == id)&&(identical(other.plate, plate) || other.plate == plate)&&(identical(other.plateSlug, plateSlug) || other.plateSlug == plateSlug)&&(identical(other.abellaId, abellaId) || other.abellaId == abellaId)&&const DeepCollectionEquality().equals(other.chassisPlate, chassisPlate)&&(identical(other.tare, tare) || other.tare == tare)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.modelId, modelId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.createdYear, createdYear) || other.createdYear == createdYear)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,plate,plateSlug,abellaId,const DeepCollectionEquality().hash(chassisPlate),tare,color,const DeepCollectionEquality().hash(modelId),cityId,createdYear,createdAt,updatedAt,status,city);

@override
String toString() {
  return 'TruckRelation(id: $id, plate: $plate, plateSlug: $plateSlug, abellaId: $abellaId, chassisPlate: $chassisPlate, tare: $tare, color: $color, modelId: $modelId, cityId: $cityId, createdYear: $createdYear, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, city: $city)';
}


}

/// @nodoc
abstract mixin class $TruckRelationCopyWith<$Res>  {
  factory $TruckRelationCopyWith(TruckRelation value, $Res Function(TruckRelation) _then) = _$TruckRelationCopyWithImpl;
@useResult
$Res call({
 int? id, String? plate,@JsonKey(name: 'plate_slug') String? plateSlug,@JsonKey(name: 'abella_id') String? abellaId,@JsonKey(name: 'chassis_plate') dynamic chassisPlate, int? tare, String? color,@JsonKey(name: 'model_id') dynamic modelId,@JsonKey(name: 'city_id') int? cityId,@JsonKey(name: 'created_year') String? createdYear,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, String? status, City? city
});


$CityCopyWith<$Res>? get city;

}
/// @nodoc
class _$TruckRelationCopyWithImpl<$Res>
    implements $TruckRelationCopyWith<$Res> {
  _$TruckRelationCopyWithImpl(this._self, this._then);

  final TruckRelation _self;
  final $Res Function(TruckRelation) _then;

/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? plate = freezed,Object? plateSlug = freezed,Object? abellaId = freezed,Object? chassisPlate = freezed,Object? tare = freezed,Object? color = freezed,Object? modelId = freezed,Object? cityId = freezed,Object? createdYear = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? status = freezed,Object? city = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,plate: freezed == plate ? _self.plate : plate // ignore: cast_nullable_to_non_nullable
as String?,plateSlug: freezed == plateSlug ? _self.plateSlug : plateSlug // ignore: cast_nullable_to_non_nullable
as String?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as String?,chassisPlate: freezed == chassisPlate ? _self.chassisPlate : chassisPlate // ignore: cast_nullable_to_non_nullable
as dynamic,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as int?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as dynamic,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,createdYear: freezed == createdYear ? _self.createdYear : createdYear // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}
/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [TruckRelation].
extension TruckRelationPatterns on TruckRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TruckRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TruckRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TruckRelation value)  $default,){
final _that = this;
switch (_that) {
case _TruckRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TruckRelation value)?  $default,){
final _that = this;
switch (_that) {
case _TruckRelation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? plate, @JsonKey(name: 'plate_slug')  String? plateSlug, @JsonKey(name: 'abella_id')  String? abellaId, @JsonKey(name: 'chassis_plate')  dynamic chassisPlate,  int? tare,  String? color, @JsonKey(name: 'model_id')  dynamic modelId, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'created_year')  String? createdYear, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  String? status,  City? city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TruckRelation() when $default != null:
return $default(_that.id,_that.plate,_that.plateSlug,_that.abellaId,_that.chassisPlate,_that.tare,_that.color,_that.modelId,_that.cityId,_that.createdYear,_that.createdAt,_that.updatedAt,_that.status,_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? plate, @JsonKey(name: 'plate_slug')  String? plateSlug, @JsonKey(name: 'abella_id')  String? abellaId, @JsonKey(name: 'chassis_plate')  dynamic chassisPlate,  int? tare,  String? color, @JsonKey(name: 'model_id')  dynamic modelId, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'created_year')  String? createdYear, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  String? status,  City? city)  $default,) {final _that = this;
switch (_that) {
case _TruckRelation():
return $default(_that.id,_that.plate,_that.plateSlug,_that.abellaId,_that.chassisPlate,_that.tare,_that.color,_that.modelId,_that.cityId,_that.createdYear,_that.createdAt,_that.updatedAt,_that.status,_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? plate, @JsonKey(name: 'plate_slug')  String? plateSlug, @JsonKey(name: 'abella_id')  String? abellaId, @JsonKey(name: 'chassis_plate')  dynamic chassisPlate,  int? tare,  String? color, @JsonKey(name: 'model_id')  dynamic modelId, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'created_year')  String? createdYear, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  String? status,  City? city)?  $default,) {final _that = this;
switch (_that) {
case _TruckRelation() when $default != null:
return $default(_that.id,_that.plate,_that.plateSlug,_that.abellaId,_that.chassisPlate,_that.tare,_that.color,_that.modelId,_that.cityId,_that.createdYear,_that.createdAt,_that.updatedAt,_that.status,_that.city);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TruckRelation implements TruckRelation {
   _TruckRelation({this.id, this.plate, @JsonKey(name: 'plate_slug') this.plateSlug, @JsonKey(name: 'abella_id') this.abellaId, @JsonKey(name: 'chassis_plate') this.chassisPlate, this.tare, this.color, @JsonKey(name: 'model_id') this.modelId, @JsonKey(name: 'city_id') this.cityId, @JsonKey(name: 'created_year') this.createdYear, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.status, this.city});
  factory _TruckRelation.fromJson(Map<String, dynamic> json) => _$TruckRelationFromJson(json);

@override final  int? id;
@override final  String? plate;
@override@JsonKey(name: 'plate_slug') final  String? plateSlug;
@override@JsonKey(name: 'abella_id') final  String? abellaId;
@override@JsonKey(name: 'chassis_plate') final  dynamic chassisPlate;
@override final  int? tare;
@override final  String? color;
@override@JsonKey(name: 'model_id') final  dynamic modelId;
@override@JsonKey(name: 'city_id') final  int? cityId;
@override@JsonKey(name: 'created_year') final  String? createdYear;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override final  String? status;
@override final  City? city;

/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TruckRelationCopyWith<_TruckRelation> get copyWith => __$TruckRelationCopyWithImpl<_TruckRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TruckRelationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TruckRelation&&(identical(other.id, id) || other.id == id)&&(identical(other.plate, plate) || other.plate == plate)&&(identical(other.plateSlug, plateSlug) || other.plateSlug == plateSlug)&&(identical(other.abellaId, abellaId) || other.abellaId == abellaId)&&const DeepCollectionEquality().equals(other.chassisPlate, chassisPlate)&&(identical(other.tare, tare) || other.tare == tare)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.modelId, modelId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.createdYear, createdYear) || other.createdYear == createdYear)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,plate,plateSlug,abellaId,const DeepCollectionEquality().hash(chassisPlate),tare,color,const DeepCollectionEquality().hash(modelId),cityId,createdYear,createdAt,updatedAt,status,city);

@override
String toString() {
  return 'TruckRelation(id: $id, plate: $plate, plateSlug: $plateSlug, abellaId: $abellaId, chassisPlate: $chassisPlate, tare: $tare, color: $color, modelId: $modelId, cityId: $cityId, createdYear: $createdYear, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, city: $city)';
}


}

/// @nodoc
abstract mixin class _$TruckRelationCopyWith<$Res> implements $TruckRelationCopyWith<$Res> {
  factory _$TruckRelationCopyWith(_TruckRelation value, $Res Function(_TruckRelation) _then) = __$TruckRelationCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? plate,@JsonKey(name: 'plate_slug') String? plateSlug,@JsonKey(name: 'abella_id') String? abellaId,@JsonKey(name: 'chassis_plate') dynamic chassisPlate, int? tare, String? color,@JsonKey(name: 'model_id') dynamic modelId,@JsonKey(name: 'city_id') int? cityId,@JsonKey(name: 'created_year') String? createdYear,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, String? status, City? city
});


@override $CityCopyWith<$Res>? get city;

}
/// @nodoc
class __$TruckRelationCopyWithImpl<$Res>
    implements _$TruckRelationCopyWith<$Res> {
  __$TruckRelationCopyWithImpl(this._self, this._then);

  final _TruckRelation _self;
  final $Res Function(_TruckRelation) _then;

/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? plate = freezed,Object? plateSlug = freezed,Object? abellaId = freezed,Object? chassisPlate = freezed,Object? tare = freezed,Object? color = freezed,Object? modelId = freezed,Object? cityId = freezed,Object? createdYear = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? status = freezed,Object? city = freezed,}) {
  return _then(_TruckRelation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,plate: freezed == plate ? _self.plate : plate // ignore: cast_nullable_to_non_nullable
as String?,plateSlug: freezed == plateSlug ? _self.plateSlug : plateSlug // ignore: cast_nullable_to_non_nullable
as String?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as String?,chassisPlate: freezed == chassisPlate ? _self.chassisPlate : chassisPlate // ignore: cast_nullable_to_non_nullable
as dynamic,tare: freezed == tare ? _self.tare : tare // ignore: cast_nullable_to_non_nullable
as int?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as dynamic,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,createdYear: freezed == createdYear ? _self.createdYear : createdYear // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of TruckRelation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}

// dart format on
