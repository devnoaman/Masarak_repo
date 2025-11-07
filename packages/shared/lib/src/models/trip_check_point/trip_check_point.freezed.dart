// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_check_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripCheckPoint {

 String? get name; String? get creation; String? get modified;@JsonKey(name: 'modified_by') String? get modifiedBy; String? get owner; int? get docstatus; int? get idx; String? get parent; String? get parentfield; String? get parenttype;@JsonKey(name: 'check_point') String? get checkPoint;@JsonKey(name: 'entered_time') DateTime? get enteredTime;@JsonKey(name: 'entered_by') dynamic get enteredBy;@JsonKey(name: 'exit_time') DateTime? get exitTime;@JsonKey(name: 'done_by') dynamic get doneBy; dynamic get notes;
/// Create a copy of TripCheckPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripCheckPointCopyWith<TripCheckPoint> get copyWith => _$TripCheckPointCopyWithImpl<TripCheckPoint>(this as TripCheckPoint, _$identity);

  /// Serializes this TripCheckPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripCheckPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.parentfield, parentfield) || other.parentfield == parentfield)&&(identical(other.parenttype, parenttype) || other.parenttype == parenttype)&&(identical(other.checkPoint, checkPoint) || other.checkPoint == checkPoint)&&(identical(other.enteredTime, enteredTime) || other.enteredTime == enteredTime)&&const DeepCollectionEquality().equals(other.enteredBy, enteredBy)&&(identical(other.exitTime, exitTime) || other.exitTime == exitTime)&&const DeepCollectionEquality().equals(other.doneBy, doneBy)&&const DeepCollectionEquality().equals(other.notes, notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,creation,modified,modifiedBy,owner,docstatus,idx,parent,parentfield,parenttype,checkPoint,enteredTime,const DeepCollectionEquality().hash(enteredBy),exitTime,const DeepCollectionEquality().hash(doneBy),const DeepCollectionEquality().hash(notes));

@override
String toString() {
  return 'TripCheckPoint(name: $name, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, owner: $owner, docstatus: $docstatus, idx: $idx, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, checkPoint: $checkPoint, enteredTime: $enteredTime, enteredBy: $enteredBy, exitTime: $exitTime, doneBy: $doneBy, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $TripCheckPointCopyWith<$Res>  {
  factory $TripCheckPointCopyWith(TripCheckPoint value, $Res Function(TripCheckPoint) _then) = _$TripCheckPointCopyWithImpl;
@useResult
$Res call({
 String? name, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, String? owner, int? docstatus, int? idx, String? parent, String? parentfield, String? parenttype,@JsonKey(name: 'check_point') String? checkPoint,@JsonKey(name: 'entered_time') DateTime? enteredTime,@JsonKey(name: 'entered_by') dynamic enteredBy,@JsonKey(name: 'exit_time') DateTime? exitTime,@JsonKey(name: 'done_by') dynamic doneBy, dynamic notes
});




}
/// @nodoc
class _$TripCheckPointCopyWithImpl<$Res>
    implements $TripCheckPointCopyWith<$Res> {
  _$TripCheckPointCopyWithImpl(this._self, this._then);

  final TripCheckPoint _self;
  final $Res Function(TripCheckPoint) _then;

/// Create a copy of TripCheckPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? owner = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? parent = freezed,Object? parentfield = freezed,Object? parenttype = freezed,Object? checkPoint = freezed,Object? enteredTime = freezed,Object? enteredBy = freezed,Object? exitTime = freezed,Object? doneBy = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as String?,parentfield: freezed == parentfield ? _self.parentfield : parentfield // ignore: cast_nullable_to_non_nullable
as String?,parenttype: freezed == parenttype ? _self.parenttype : parenttype // ignore: cast_nullable_to_non_nullable
as String?,checkPoint: freezed == checkPoint ? _self.checkPoint : checkPoint // ignore: cast_nullable_to_non_nullable
as String?,enteredTime: freezed == enteredTime ? _self.enteredTime : enteredTime // ignore: cast_nullable_to_non_nullable
as DateTime?,enteredBy: freezed == enteredBy ? _self.enteredBy : enteredBy // ignore: cast_nullable_to_non_nullable
as dynamic,exitTime: freezed == exitTime ? _self.exitTime : exitTime // ignore: cast_nullable_to_non_nullable
as DateTime?,doneBy: freezed == doneBy ? _self.doneBy : doneBy // ignore: cast_nullable_to_non_nullable
as dynamic,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TripCheckPoint].
extension TripCheckPointPatterns on TripCheckPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripCheckPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripCheckPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripCheckPoint value)  $default,){
final _that = this;
switch (_that) {
case _TripCheckPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripCheckPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TripCheckPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx,  String? parent,  String? parentfield,  String? parenttype, @JsonKey(name: 'check_point')  String? checkPoint, @JsonKey(name: 'entered_time')  DateTime? enteredTime, @JsonKey(name: 'entered_by')  dynamic enteredBy, @JsonKey(name: 'exit_time')  DateTime? exitTime, @JsonKey(name: 'done_by')  dynamic doneBy,  dynamic notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripCheckPoint() when $default != null:
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.parent,_that.parentfield,_that.parenttype,_that.checkPoint,_that.enteredTime,_that.enteredBy,_that.exitTime,_that.doneBy,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx,  String? parent,  String? parentfield,  String? parenttype, @JsonKey(name: 'check_point')  String? checkPoint, @JsonKey(name: 'entered_time')  DateTime? enteredTime, @JsonKey(name: 'entered_by')  dynamic enteredBy, @JsonKey(name: 'exit_time')  DateTime? exitTime, @JsonKey(name: 'done_by')  dynamic doneBy,  dynamic notes)  $default,) {final _that = this;
switch (_that) {
case _TripCheckPoint():
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.parent,_that.parentfield,_that.parenttype,_that.checkPoint,_that.enteredTime,_that.enteredBy,_that.exitTime,_that.doneBy,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  String? owner,  int? docstatus,  int? idx,  String? parent,  String? parentfield,  String? parenttype, @JsonKey(name: 'check_point')  String? checkPoint, @JsonKey(name: 'entered_time')  DateTime? enteredTime, @JsonKey(name: 'entered_by')  dynamic enteredBy, @JsonKey(name: 'exit_time')  DateTime? exitTime, @JsonKey(name: 'done_by')  dynamic doneBy,  dynamic notes)?  $default,) {final _that = this;
switch (_that) {
case _TripCheckPoint() when $default != null:
return $default(_that.name,_that.creation,_that.modified,_that.modifiedBy,_that.owner,_that.docstatus,_that.idx,_that.parent,_that.parentfield,_that.parenttype,_that.checkPoint,_that.enteredTime,_that.enteredBy,_that.exitTime,_that.doneBy,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripCheckPoint implements TripCheckPoint {
   _TripCheckPoint({this.name, this.creation, this.modified, @JsonKey(name: 'modified_by') this.modifiedBy, this.owner, this.docstatus, this.idx, this.parent, this.parentfield, this.parenttype, @JsonKey(name: 'check_point') this.checkPoint, @JsonKey(name: 'entered_time') this.enteredTime, @JsonKey(name: 'entered_by') this.enteredBy, @JsonKey(name: 'exit_time') this.exitTime, @JsonKey(name: 'done_by') this.doneBy, this.notes});
  factory _TripCheckPoint.fromJson(Map<String, dynamic> json) => _$TripCheckPointFromJson(json);

@override final  String? name;
@override final  String? creation;
@override final  String? modified;
@override@JsonKey(name: 'modified_by') final  String? modifiedBy;
@override final  String? owner;
@override final  int? docstatus;
@override final  int? idx;
@override final  String? parent;
@override final  String? parentfield;
@override final  String? parenttype;
@override@JsonKey(name: 'check_point') final  String? checkPoint;
@override@JsonKey(name: 'entered_time') final  DateTime? enteredTime;
@override@JsonKey(name: 'entered_by') final  dynamic enteredBy;
@override@JsonKey(name: 'exit_time') final  DateTime? exitTime;
@override@JsonKey(name: 'done_by') final  dynamic doneBy;
@override final  dynamic notes;

/// Create a copy of TripCheckPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCheckPointCopyWith<_TripCheckPoint> get copyWith => __$TripCheckPointCopyWithImpl<_TripCheckPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripCheckPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripCheckPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.parentfield, parentfield) || other.parentfield == parentfield)&&(identical(other.parenttype, parenttype) || other.parenttype == parenttype)&&(identical(other.checkPoint, checkPoint) || other.checkPoint == checkPoint)&&(identical(other.enteredTime, enteredTime) || other.enteredTime == enteredTime)&&const DeepCollectionEquality().equals(other.enteredBy, enteredBy)&&(identical(other.exitTime, exitTime) || other.exitTime == exitTime)&&const DeepCollectionEquality().equals(other.doneBy, doneBy)&&const DeepCollectionEquality().equals(other.notes, notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,creation,modified,modifiedBy,owner,docstatus,idx,parent,parentfield,parenttype,checkPoint,enteredTime,const DeepCollectionEquality().hash(enteredBy),exitTime,const DeepCollectionEquality().hash(doneBy),const DeepCollectionEquality().hash(notes));

@override
String toString() {
  return 'TripCheckPoint(name: $name, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, owner: $owner, docstatus: $docstatus, idx: $idx, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, checkPoint: $checkPoint, enteredTime: $enteredTime, enteredBy: $enteredBy, exitTime: $exitTime, doneBy: $doneBy, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$TripCheckPointCopyWith<$Res> implements $TripCheckPointCopyWith<$Res> {
  factory _$TripCheckPointCopyWith(_TripCheckPoint value, $Res Function(_TripCheckPoint) _then) = __$TripCheckPointCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, String? owner, int? docstatus, int? idx, String? parent, String? parentfield, String? parenttype,@JsonKey(name: 'check_point') String? checkPoint,@JsonKey(name: 'entered_time') DateTime? enteredTime,@JsonKey(name: 'entered_by') dynamic enteredBy,@JsonKey(name: 'exit_time') DateTime? exitTime,@JsonKey(name: 'done_by') dynamic doneBy, dynamic notes
});




}
/// @nodoc
class __$TripCheckPointCopyWithImpl<$Res>
    implements _$TripCheckPointCopyWith<$Res> {
  __$TripCheckPointCopyWithImpl(this._self, this._then);

  final _TripCheckPoint _self;
  final $Res Function(_TripCheckPoint) _then;

/// Create a copy of TripCheckPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? owner = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? parent = freezed,Object? parentfield = freezed,Object? parenttype = freezed,Object? checkPoint = freezed,Object? enteredTime = freezed,Object? enteredBy = freezed,Object? exitTime = freezed,Object? doneBy = freezed,Object? notes = freezed,}) {
  return _then(_TripCheckPoint(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as String?,parentfield: freezed == parentfield ? _self.parentfield : parentfield // ignore: cast_nullable_to_non_nullable
as String?,parenttype: freezed == parenttype ? _self.parenttype : parenttype // ignore: cast_nullable_to_non_nullable
as String?,checkPoint: freezed == checkPoint ? _self.checkPoint : checkPoint // ignore: cast_nullable_to_non_nullable
as String?,enteredTime: freezed == enteredTime ? _self.enteredTime : enteredTime // ignore: cast_nullable_to_non_nullable
as DateTime?,enteredBy: freezed == enteredBy ? _self.enteredBy : enteredBy // ignore: cast_nullable_to_non_nullable
as dynamic,exitTime: freezed == exitTime ? _self.exitTime : exitTime // ignore: cast_nullable_to_non_nullable
as DateTime?,doneBy: freezed == doneBy ? _self.doneBy : doneBy // ignore: cast_nullable_to_non_nullable
as dynamic,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
