// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Role {

 int? get id; String? get name;@JsonKey(name: 'guard_name') String? get guardName;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt; Pivot? get pivot;
/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleCopyWith<Role> get copyWith => _$RoleCopyWithImpl<Role>(this as Role, _$identity);

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Role&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.guardName, guardName) || other.guardName == guardName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pivot, pivot) || other.pivot == pivot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,guardName,createdAt,updatedAt,pivot);

@override
String toString() {
  return 'Role(id: $id, name: $name, guardName: $guardName, createdAt: $createdAt, updatedAt: $updatedAt, pivot: $pivot)';
}


}

/// @nodoc
abstract mixin class $RoleCopyWith<$Res>  {
  factory $RoleCopyWith(Role value, $Res Function(Role) _then) = _$RoleCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'guard_name') String? guardName,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, Pivot? pivot
});


$PivotCopyWith<$Res>? get pivot;

}
/// @nodoc
class _$RoleCopyWithImpl<$Res>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._self, this._then);

  final Role _self;
  final $Res Function(Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? guardName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? pivot = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,guardName: freezed == guardName ? _self.guardName : guardName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pivot: freezed == pivot ? _self.pivot : pivot // ignore: cast_nullable_to_non_nullable
as Pivot?,
  ));
}
/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PivotCopyWith<$Res>? get pivot {
    if (_self.pivot == null) {
    return null;
  }

  return $PivotCopyWith<$Res>(_self.pivot!, (value) {
    return _then(_self.copyWith(pivot: value));
  });
}
}


/// Adds pattern-matching-related methods to [Role].
extension RolePatterns on Role {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Role value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Role value)  $default,){
final _that = this;
switch (_that) {
case _Role():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Role value)?  $default,){
final _that = this;
switch (_that) {
case _Role() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'guard_name')  String? guardName, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  Pivot? pivot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.id,_that.name,_that.guardName,_that.createdAt,_that.updatedAt,_that.pivot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'guard_name')  String? guardName, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  Pivot? pivot)  $default,) {final _that = this;
switch (_that) {
case _Role():
return $default(_that.id,_that.name,_that.guardName,_that.createdAt,_that.updatedAt,_that.pivot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'guard_name')  String? guardName, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  Pivot? pivot)?  $default,) {final _that = this;
switch (_that) {
case _Role() when $default != null:
return $default(_that.id,_that.name,_that.guardName,_that.createdAt,_that.updatedAt,_that.pivot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Role implements Role {
   _Role({this.id, this.name, @JsonKey(name: 'guard_name') this.guardName, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.pivot});
  factory _Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'guard_name') final  String? guardName;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override final  Pivot? pivot;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleCopyWith<_Role> get copyWith => __$RoleCopyWithImpl<_Role>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Role&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.guardName, guardName) || other.guardName == guardName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pivot, pivot) || other.pivot == pivot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,guardName,createdAt,updatedAt,pivot);

@override
String toString() {
  return 'Role(id: $id, name: $name, guardName: $guardName, createdAt: $createdAt, updatedAt: $updatedAt, pivot: $pivot)';
}


}

/// @nodoc
abstract mixin class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) _then) = __$RoleCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'guard_name') String? guardName,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, Pivot? pivot
});


@override $PivotCopyWith<$Res>? get pivot;

}
/// @nodoc
class __$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(this._self, this._then);

  final _Role _self;
  final $Res Function(_Role) _then;

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? guardName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? pivot = freezed,}) {
  return _then(_Role(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,guardName: freezed == guardName ? _self.guardName : guardName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pivot: freezed == pivot ? _self.pivot : pivot // ignore: cast_nullable_to_non_nullable
as Pivot?,
  ));
}

/// Create a copy of Role
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PivotCopyWith<$Res>? get pivot {
    if (_self.pivot == null) {
    return null;
  }

  return $PivotCopyWith<$Res>(_self.pivot!, (value) {
    return _then(_self.copyWith(pivot: value));
  });
}
}

// dart format on
