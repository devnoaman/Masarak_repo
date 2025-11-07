// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pivot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pivot {

@JsonKey(name: 'model_id') int? get modelId;@JsonKey(name: 'role_id') int? get roleId;
/// Create a copy of Pivot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PivotCopyWith<Pivot> get copyWith => _$PivotCopyWithImpl<Pivot>(this as Pivot, _$identity);

  /// Serializes this Pivot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pivot&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modelId,roleId);

@override
String toString() {
  return 'Pivot(modelId: $modelId, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class $PivotCopyWith<$Res>  {
  factory $PivotCopyWith(Pivot value, $Res Function(Pivot) _then) = _$PivotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'model_id') int? modelId,@JsonKey(name: 'role_id') int? roleId
});




}
/// @nodoc
class _$PivotCopyWithImpl<$Res>
    implements $PivotCopyWith<$Res> {
  _$PivotCopyWithImpl(this._self, this._then);

  final Pivot _self;
  final $Res Function(Pivot) _then;

/// Create a copy of Pivot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modelId = freezed,Object? roleId = freezed,}) {
  return _then(_self.copyWith(
modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as int?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Pivot].
extension PivotPatterns on Pivot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pivot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pivot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pivot value)  $default,){
final _that = this;
switch (_that) {
case _Pivot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pivot value)?  $default,){
final _that = this;
switch (_that) {
case _Pivot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'role_id')  int? roleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pivot() when $default != null:
return $default(_that.modelId,_that.roleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'role_id')  int? roleId)  $default,) {final _that = this;
switch (_that) {
case _Pivot():
return $default(_that.modelId,_that.roleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'role_id')  int? roleId)?  $default,) {final _that = this;
switch (_that) {
case _Pivot() when $default != null:
return $default(_that.modelId,_that.roleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pivot implements Pivot {
   _Pivot({@JsonKey(name: 'model_id') this.modelId, @JsonKey(name: 'role_id') this.roleId});
  factory _Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

@override@JsonKey(name: 'model_id') final  int? modelId;
@override@JsonKey(name: 'role_id') final  int? roleId;

/// Create a copy of Pivot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PivotCopyWith<_Pivot> get copyWith => __$PivotCopyWithImpl<_Pivot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PivotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pivot&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modelId,roleId);

@override
String toString() {
  return 'Pivot(modelId: $modelId, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class _$PivotCopyWith<$Res> implements $PivotCopyWith<$Res> {
  factory _$PivotCopyWith(_Pivot value, $Res Function(_Pivot) _then) = __$PivotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'model_id') int? modelId,@JsonKey(name: 'role_id') int? roleId
});




}
/// @nodoc
class __$PivotCopyWithImpl<$Res>
    implements _$PivotCopyWith<$Res> {
  __$PivotCopyWithImpl(this._self, this._then);

  final _Pivot _self;
  final $Res Function(_Pivot) _then;

/// Create a copy of Pivot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modelId = freezed,Object? roleId = freezed,}) {
  return _then(_Pivot(
modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as int?,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
