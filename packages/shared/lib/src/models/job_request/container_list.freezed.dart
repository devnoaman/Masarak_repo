// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContainerList {

 String? get name; String? get owner; String? get creation; String? get modified;@JsonKey(name: 'modified_by') String? get modifiedBy; int? get docstatus; int? get idx;@JsonKey(name: 'container__bill_of_lading') String? get containerBillOfLading;@JsonKey(name: 'container_size') String? get containerSize;@JsonKey(name: 'container_type') String? get containerType;@JsonKey(name: 'container_bill_of_lading') String? get containerBillOfLading2;@JsonKey(name: 'container_number') String? get containerNumber; String? get parent; String? get parentfield; String? get parenttype; String? get doctype;@JsonKey(name: 'required_trucks') int? get requiredTrucks;
/// Create a copy of ContainerList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContainerListCopyWith<ContainerList> get copyWith => _$ContainerListCopyWithImpl<ContainerList>(this as ContainerList, _$identity);

  /// Serializes this ContainerList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContainerList&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.containerBillOfLading, containerBillOfLading) || other.containerBillOfLading == containerBillOfLading)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&(identical(other.containerType, containerType) || other.containerType == containerType)&&(identical(other.containerBillOfLading2, containerBillOfLading2) || other.containerBillOfLading2 == containerBillOfLading2)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.parentfield, parentfield) || other.parentfield == parentfield)&&(identical(other.parenttype, parenttype) || other.parenttype == parenttype)&&(identical(other.doctype, doctype) || other.doctype == doctype)&&(identical(other.requiredTrucks, requiredTrucks) || other.requiredTrucks == requiredTrucks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,owner,creation,modified,modifiedBy,docstatus,idx,containerBillOfLading,containerSize,containerType,containerBillOfLading2,containerNumber,parent,parentfield,parenttype,doctype,requiredTrucks);

@override
String toString() {
  return 'ContainerList(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, containerBillOfLading: $containerBillOfLading, containerSize: $containerSize, containerType: $containerType, containerBillOfLading2: $containerBillOfLading2, containerNumber: $containerNumber, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, doctype: $doctype, requiredTrucks: $requiredTrucks)';
}


}

/// @nodoc
abstract mixin class $ContainerListCopyWith<$Res>  {
  factory $ContainerListCopyWith(ContainerList value, $Res Function(ContainerList) _then) = _$ContainerListCopyWithImpl;
@useResult
$Res call({
 String? name, String? owner, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, int? docstatus, int? idx,@JsonKey(name: 'container__bill_of_lading') String? containerBillOfLading,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'container_type') String? containerType,@JsonKey(name: 'container_bill_of_lading') String? containerBillOfLading2,@JsonKey(name: 'container_number') String? containerNumber, String? parent, String? parentfield, String? parenttype, String? doctype,@JsonKey(name: 'required_trucks') int? requiredTrucks
});




}
/// @nodoc
class _$ContainerListCopyWithImpl<$Res>
    implements $ContainerListCopyWith<$Res> {
  _$ContainerListCopyWithImpl(this._self, this._then);

  final ContainerList _self;
  final $Res Function(ContainerList) _then;

/// Create a copy of ContainerList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? owner = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? containerBillOfLading = freezed,Object? containerSize = freezed,Object? containerType = freezed,Object? containerBillOfLading2 = freezed,Object? containerNumber = freezed,Object? parent = freezed,Object? parentfield = freezed,Object? parenttype = freezed,Object? doctype = freezed,Object? requiredTrucks = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,containerBillOfLading: freezed == containerBillOfLading ? _self.containerBillOfLading : containerBillOfLading // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,containerType: freezed == containerType ? _self.containerType : containerType // ignore: cast_nullable_to_non_nullable
as String?,containerBillOfLading2: freezed == containerBillOfLading2 ? _self.containerBillOfLading2 : containerBillOfLading2 // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as String?,parentfield: freezed == parentfield ? _self.parentfield : parentfield // ignore: cast_nullable_to_non_nullable
as String?,parenttype: freezed == parenttype ? _self.parenttype : parenttype // ignore: cast_nullable_to_non_nullable
as String?,doctype: freezed == doctype ? _self.doctype : doctype // ignore: cast_nullable_to_non_nullable
as String?,requiredTrucks: freezed == requiredTrucks ? _self.requiredTrucks : requiredTrucks // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContainerList].
extension ContainerListPatterns on ContainerList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContainerList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContainerList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContainerList value)  $default,){
final _that = this;
switch (_that) {
case _ContainerList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContainerList value)?  $default,){
final _that = this;
switch (_that) {
case _ContainerList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'container__bill_of_lading')  String? containerBillOfLading, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'container_type')  String? containerType, @JsonKey(name: 'container_bill_of_lading')  String? containerBillOfLading2, @JsonKey(name: 'container_number')  String? containerNumber,  String? parent,  String? parentfield,  String? parenttype,  String? doctype, @JsonKey(name: 'required_trucks')  int? requiredTrucks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContainerList() when $default != null:
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.containerBillOfLading,_that.containerSize,_that.containerType,_that.containerBillOfLading2,_that.containerNumber,_that.parent,_that.parentfield,_that.parenttype,_that.doctype,_that.requiredTrucks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'container__bill_of_lading')  String? containerBillOfLading, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'container_type')  String? containerType, @JsonKey(name: 'container_bill_of_lading')  String? containerBillOfLading2, @JsonKey(name: 'container_number')  String? containerNumber,  String? parent,  String? parentfield,  String? parenttype,  String? doctype, @JsonKey(name: 'required_trucks')  int? requiredTrucks)  $default,) {final _that = this;
switch (_that) {
case _ContainerList():
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.containerBillOfLading,_that.containerSize,_that.containerType,_that.containerBillOfLading2,_that.containerNumber,_that.parent,_that.parentfield,_that.parenttype,_that.doctype,_that.requiredTrucks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'container__bill_of_lading')  String? containerBillOfLading, @JsonKey(name: 'container_size')  String? containerSize, @JsonKey(name: 'container_type')  String? containerType, @JsonKey(name: 'container_bill_of_lading')  String? containerBillOfLading2, @JsonKey(name: 'container_number')  String? containerNumber,  String? parent,  String? parentfield,  String? parenttype,  String? doctype, @JsonKey(name: 'required_trucks')  int? requiredTrucks)?  $default,) {final _that = this;
switch (_that) {
case _ContainerList() when $default != null:
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.containerBillOfLading,_that.containerSize,_that.containerType,_that.containerBillOfLading2,_that.containerNumber,_that.parent,_that.parentfield,_that.parenttype,_that.doctype,_that.requiredTrucks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContainerList implements ContainerList {
   _ContainerList({this.name, this.owner, this.creation, this.modified, @JsonKey(name: 'modified_by') this.modifiedBy, this.docstatus, this.idx, @JsonKey(name: 'container__bill_of_lading') this.containerBillOfLading, @JsonKey(name: 'container_size') this.containerSize, @JsonKey(name: 'container_type') this.containerType, @JsonKey(name: 'container_bill_of_lading') this.containerBillOfLading2, @JsonKey(name: 'container_number') this.containerNumber, this.parent, this.parentfield, this.parenttype, this.doctype, @JsonKey(name: 'required_trucks') this.requiredTrucks});
  factory _ContainerList.fromJson(Map<String, dynamic> json) => _$ContainerListFromJson(json);

@override final  String? name;
@override final  String? owner;
@override final  String? creation;
@override final  String? modified;
@override@JsonKey(name: 'modified_by') final  String? modifiedBy;
@override final  int? docstatus;
@override final  int? idx;
@override@JsonKey(name: 'container__bill_of_lading') final  String? containerBillOfLading;
@override@JsonKey(name: 'container_size') final  String? containerSize;
@override@JsonKey(name: 'container_type') final  String? containerType;
@override@JsonKey(name: 'container_bill_of_lading') final  String? containerBillOfLading2;
@override@JsonKey(name: 'container_number') final  String? containerNumber;
@override final  String? parent;
@override final  String? parentfield;
@override final  String? parenttype;
@override final  String? doctype;
@override@JsonKey(name: 'required_trucks') final  int? requiredTrucks;

/// Create a copy of ContainerList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContainerListCopyWith<_ContainerList> get copyWith => __$ContainerListCopyWithImpl<_ContainerList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContainerListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContainerList&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.containerBillOfLading, containerBillOfLading) || other.containerBillOfLading == containerBillOfLading)&&(identical(other.containerSize, containerSize) || other.containerSize == containerSize)&&(identical(other.containerType, containerType) || other.containerType == containerType)&&(identical(other.containerBillOfLading2, containerBillOfLading2) || other.containerBillOfLading2 == containerBillOfLading2)&&(identical(other.containerNumber, containerNumber) || other.containerNumber == containerNumber)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.parentfield, parentfield) || other.parentfield == parentfield)&&(identical(other.parenttype, parenttype) || other.parenttype == parenttype)&&(identical(other.doctype, doctype) || other.doctype == doctype)&&(identical(other.requiredTrucks, requiredTrucks) || other.requiredTrucks == requiredTrucks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,owner,creation,modified,modifiedBy,docstatus,idx,containerBillOfLading,containerSize,containerType,containerBillOfLading2,containerNumber,parent,parentfield,parenttype,doctype,requiredTrucks);

@override
String toString() {
  return 'ContainerList(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, containerBillOfLading: $containerBillOfLading, containerSize: $containerSize, containerType: $containerType, containerBillOfLading2: $containerBillOfLading2, containerNumber: $containerNumber, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, doctype: $doctype, requiredTrucks: $requiredTrucks)';
}


}

/// @nodoc
abstract mixin class _$ContainerListCopyWith<$Res> implements $ContainerListCopyWith<$Res> {
  factory _$ContainerListCopyWith(_ContainerList value, $Res Function(_ContainerList) _then) = __$ContainerListCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? owner, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, int? docstatus, int? idx,@JsonKey(name: 'container__bill_of_lading') String? containerBillOfLading,@JsonKey(name: 'container_size') String? containerSize,@JsonKey(name: 'container_type') String? containerType,@JsonKey(name: 'container_bill_of_lading') String? containerBillOfLading2,@JsonKey(name: 'container_number') String? containerNumber, String? parent, String? parentfield, String? parenttype, String? doctype,@JsonKey(name: 'required_trucks') int? requiredTrucks
});




}
/// @nodoc
class __$ContainerListCopyWithImpl<$Res>
    implements _$ContainerListCopyWith<$Res> {
  __$ContainerListCopyWithImpl(this._self, this._then);

  final _ContainerList _self;
  final $Res Function(_ContainerList) _then;

/// Create a copy of ContainerList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? owner = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? containerBillOfLading = freezed,Object? containerSize = freezed,Object? containerType = freezed,Object? containerBillOfLading2 = freezed,Object? containerNumber = freezed,Object? parent = freezed,Object? parentfield = freezed,Object? parenttype = freezed,Object? doctype = freezed,Object? requiredTrucks = freezed,}) {
  return _then(_ContainerList(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,containerBillOfLading: freezed == containerBillOfLading ? _self.containerBillOfLading : containerBillOfLading // ignore: cast_nullable_to_non_nullable
as String?,containerSize: freezed == containerSize ? _self.containerSize : containerSize // ignore: cast_nullable_to_non_nullable
as String?,containerType: freezed == containerType ? _self.containerType : containerType // ignore: cast_nullable_to_non_nullable
as String?,containerBillOfLading2: freezed == containerBillOfLading2 ? _self.containerBillOfLading2 : containerBillOfLading2 // ignore: cast_nullable_to_non_nullable
as String?,containerNumber: freezed == containerNumber ? _self.containerNumber : containerNumber // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as String?,parentfield: freezed == parentfield ? _self.parentfield : parentfield // ignore: cast_nullable_to_non_nullable
as String?,parenttype: freezed == parenttype ? _self.parenttype : parenttype // ignore: cast_nullable_to_non_nullable
as String?,doctype: freezed == doctype ? _self.doctype : doctype // ignore: cast_nullable_to_non_nullable
as String?,requiredTrucks: freezed == requiredTrucks ? _self.requiredTrucks : requiredTrucks // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
