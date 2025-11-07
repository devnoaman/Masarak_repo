// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printing_agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrintingAgent {

 int? get id; String? get name; String? get mobile; String? get address;@JsonKey(name: 'abella_id') dynamic get abellaId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of PrintingAgent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrintingAgentCopyWith<PrintingAgent> get copyWith => _$PrintingAgentCopyWithImpl<PrintingAgent>(this as PrintingAgent, _$identity);

  /// Serializes this PrintingAgent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrintingAgent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.abellaId, abellaId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobile,address,const DeepCollectionEquality().hash(abellaId),createdAt,updatedAt);

@override
String toString() {
  return 'PrintingAgent(id: $id, name: $name, mobile: $mobile, address: $address, abellaId: $abellaId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PrintingAgentCopyWith<$Res>  {
  factory $PrintingAgentCopyWith(PrintingAgent value, $Res Function(PrintingAgent) _then) = _$PrintingAgentCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? mobile, String? address,@JsonKey(name: 'abella_id') dynamic abellaId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$PrintingAgentCopyWithImpl<$Res>
    implements $PrintingAgentCopyWith<$Res> {
  _$PrintingAgentCopyWithImpl(this._self, this._then);

  final PrintingAgent _self;
  final $Res Function(PrintingAgent) _then;

/// Create a copy of PrintingAgent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? mobile = freezed,Object? address = freezed,Object? abellaId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrintingAgent].
extension PrintingAgentPatterns on PrintingAgent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrintingAgent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrintingAgent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrintingAgent value)  $default,){
final _that = this;
switch (_that) {
case _PrintingAgent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrintingAgent value)?  $default,){
final _that = this;
switch (_that) {
case _PrintingAgent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? mobile,  String? address, @JsonKey(name: 'abella_id')  dynamic abellaId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrintingAgent() when $default != null:
return $default(_that.id,_that.name,_that.mobile,_that.address,_that.abellaId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? mobile,  String? address, @JsonKey(name: 'abella_id')  dynamic abellaId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PrintingAgent():
return $default(_that.id,_that.name,_that.mobile,_that.address,_that.abellaId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? mobile,  String? address, @JsonKey(name: 'abella_id')  dynamic abellaId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PrintingAgent() when $default != null:
return $default(_that.id,_that.name,_that.mobile,_that.address,_that.abellaId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrintingAgent implements PrintingAgent {
   _PrintingAgent({this.id, this.name, this.mobile, this.address, @JsonKey(name: 'abella_id') this.abellaId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _PrintingAgent.fromJson(Map<String, dynamic> json) => _$PrintingAgentFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? mobile;
@override final  String? address;
@override@JsonKey(name: 'abella_id') final  dynamic abellaId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of PrintingAgent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrintingAgentCopyWith<_PrintingAgent> get copyWith => __$PrintingAgentCopyWithImpl<_PrintingAgent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrintingAgentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrintingAgent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.abellaId, abellaId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobile,address,const DeepCollectionEquality().hash(abellaId),createdAt,updatedAt);

@override
String toString() {
  return 'PrintingAgent(id: $id, name: $name, mobile: $mobile, address: $address, abellaId: $abellaId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PrintingAgentCopyWith<$Res> implements $PrintingAgentCopyWith<$Res> {
  factory _$PrintingAgentCopyWith(_PrintingAgent value, $Res Function(_PrintingAgent) _then) = __$PrintingAgentCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? mobile, String? address,@JsonKey(name: 'abella_id') dynamic abellaId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$PrintingAgentCopyWithImpl<$Res>
    implements _$PrintingAgentCopyWith<$Res> {
  __$PrintingAgentCopyWithImpl(this._self, this._then);

  final _PrintingAgent _self;
  final $Res Function(_PrintingAgent) _then;

/// Create a copy of PrintingAgent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? mobile = freezed,Object? address = freezed,Object? abellaId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PrintingAgent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,abellaId: freezed == abellaId ? _self.abellaId : abellaId // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
