// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Berth {

 int? get id;@JsonKey(name: 'abella_id') String? get abellaId; String? get port;@JsonKey(name: 'berth_name') String? get berthName;@JsonKey(name: 'terminal_operator_name') String? get terminalOperatorName;@JsonKey(name: 'cargo_types') dynamic get cargoTypes;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Berth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BerthCopyWith<Berth> get copyWith => _$BerthCopyWithImpl<Berth>(this as Berth, _$identity);

  /// Serializes this Berth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Berth&&(identical(other.id, id) || other.id == id)&&(identical(other.abellaId, abellaId) || other.abellaId == abellaId)&&(identical(other.port, port) || other.port == port)&&(identical(other.berthName, berthName) || other.berthName == berthName)&&(identical(other.terminalOperatorName, terminalOperatorName) || other.terminalOperatorName == terminalOperatorName)&&const DeepCollectionEquality().equals(other.cargoTypes, cargoTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,abellaId,port,berthName,terminalOperatorName,const DeepCollectionEquality().hash(cargoTypes),createdAt,updatedAt);

@override
String toString() {
  return 'Berth(id: $id, abellaId: $abellaId, port: $port, berthName: $berthName, terminalOperatorName: $terminalOperatorName, cargoTypes: $cargoTypes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BerthCopyWith<$Res>  {
  factory $BerthCopyWith(Berth value, $Res Function(Berth) _then) = _$BerthCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'abella_id') String? abellaId, String? port,@JsonKey(name: 'berth_name') String? berthName,@JsonKey(name: 'terminal_operator_name') String? terminalOperatorName,@JsonKey(name: 'cargo_types') dynamic cargoTypes,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$BerthCopyWithImpl<$Res>
    implements $BerthCopyWith<$Res> {
  _$BerthCopyWithImpl(this._self, this._then);

  final Berth _self;
  final $Res Function(Berth) _then;

/// Create a copy of Berth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? abellaId = freezed,Object? port = freezed,Object? berthName = freezed,Object? terminalOperatorName = freezed,Object? cargoTypes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as String?,berthName: freezed == berthName ? _self.berthName : berthName // ignore: cast_nullable_to_non_nullable
as String?,terminalOperatorName: freezed == terminalOperatorName ? _self.terminalOperatorName : terminalOperatorName // ignore: cast_nullable_to_non_nullable
as String?,cargoTypes: freezed == cargoTypes ? _self.cargoTypes : cargoTypes // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Berth].
extension BerthPatterns on Berth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Berth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Berth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Berth value)  $default,){
final _that = this;
switch (_that) {
case _Berth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Berth value)?  $default,){
final _that = this;
switch (_that) {
case _Berth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'abella_id')  String? abellaId,  String? port, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'terminal_operator_name')  String? terminalOperatorName, @JsonKey(name: 'cargo_types')  dynamic cargoTypes, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Berth() when $default != null:
return $default(_that.id,_that.abellaId,_that.port,_that.berthName,_that.terminalOperatorName,_that.cargoTypes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'abella_id')  String? abellaId,  String? port, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'terminal_operator_name')  String? terminalOperatorName, @JsonKey(name: 'cargo_types')  dynamic cargoTypes, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Berth():
return $default(_that.id,_that.abellaId,_that.port,_that.berthName,_that.terminalOperatorName,_that.cargoTypes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'abella_id')  String? abellaId,  String? port, @JsonKey(name: 'berth_name')  String? berthName, @JsonKey(name: 'terminal_operator_name')  String? terminalOperatorName, @JsonKey(name: 'cargo_types')  dynamic cargoTypes, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Berth() when $default != null:
return $default(_that.id,_that.abellaId,_that.port,_that.berthName,_that.terminalOperatorName,_that.cargoTypes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Berth implements Berth {
   _Berth({this.id, @JsonKey(name: 'abella_id') this.abellaId, this.port, @JsonKey(name: 'berth_name') this.berthName, @JsonKey(name: 'terminal_operator_name') this.terminalOperatorName, @JsonKey(name: 'cargo_types') this.cargoTypes, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _Berth.fromJson(Map<String, dynamic> json) => _$BerthFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'abella_id') final  String? abellaId;
@override final  String? port;
@override@JsonKey(name: 'berth_name') final  String? berthName;
@override@JsonKey(name: 'terminal_operator_name') final  String? terminalOperatorName;
@override@JsonKey(name: 'cargo_types') final  dynamic cargoTypes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Berth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BerthCopyWith<_Berth> get copyWith => __$BerthCopyWithImpl<_Berth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BerthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Berth&&(identical(other.id, id) || other.id == id)&&(identical(other.abellaId, abellaId) || other.abellaId == abellaId)&&(identical(other.port, port) || other.port == port)&&(identical(other.berthName, berthName) || other.berthName == berthName)&&(identical(other.terminalOperatorName, terminalOperatorName) || other.terminalOperatorName == terminalOperatorName)&&const DeepCollectionEquality().equals(other.cargoTypes, cargoTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,abellaId,port,berthName,terminalOperatorName,const DeepCollectionEquality().hash(cargoTypes),createdAt,updatedAt);

@override
String toString() {
  return 'Berth(id: $id, abellaId: $abellaId, port: $port, berthName: $berthName, terminalOperatorName: $terminalOperatorName, cargoTypes: $cargoTypes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BerthCopyWith<$Res> implements $BerthCopyWith<$Res> {
  factory _$BerthCopyWith(_Berth value, $Res Function(_Berth) _then) = __$BerthCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'abella_id') String? abellaId, String? port,@JsonKey(name: 'berth_name') String? berthName,@JsonKey(name: 'terminal_operator_name') String? terminalOperatorName,@JsonKey(name: 'cargo_types') dynamic cargoTypes,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$BerthCopyWithImpl<$Res>
    implements _$BerthCopyWith<$Res> {
  __$BerthCopyWithImpl(this._self, this._then);

  final _Berth _self;
  final $Res Function(_Berth) _then;

/// Create a copy of Berth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? abellaId = freezed,Object? port = freezed,Object? berthName = freezed,Object? terminalOperatorName = freezed,Object? cargoTypes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Berth(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as String?,berthName: freezed == berthName ? _self.berthName : berthName // ignore: cast_nullable_to_non_nullable
as String?,terminalOperatorName: freezed == terminalOperatorName ? _self.terminalOperatorName : terminalOperatorName // ignore: cast_nullable_to_non_nullable
as String?,cargoTypes: freezed == cargoTypes ? _self.cargoTypes : cargoTypes // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
