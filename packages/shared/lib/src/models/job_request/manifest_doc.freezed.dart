// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manifest_doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManifestDoc {

 String? get name; String? get owner; String? get creation; String? get modified;@JsonKey(name: 'modified_by') String? get modifiedBy; int? get docstatus; int? get idx;@JsonKey(name: 'maifest_date') String? get maifestDate; String? get ship;@JsonKey(name: 'ship_agent') String? get shipAgent;@JsonKey(name: 'imo_number') String? get imoNumber;@JsonKey(name: 'weight_grt') int? get weightGrt;@JsonKey(name: 'voyage_number') String? get voyageNumber;@JsonKey(name: 'port_name') String? get portName;@JsonKey(name: 'cargo_type') String? get cargoType; String? get berth;@JsonKey(name: 'berth_number') String? get berthNumber;@JsonKey(name: 'berthing_date') String? get berthingDate; String? get doctype;
/// Create a copy of ManifestDoc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManifestDocCopyWith<ManifestDoc> get copyWith => _$ManifestDocCopyWithImpl<ManifestDoc>(this as ManifestDoc, _$identity);

  /// Serializes this ManifestDoc to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManifestDoc&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.maifestDate, maifestDate) || other.maifestDate == maifestDate)&&(identical(other.ship, ship) || other.ship == ship)&&(identical(other.shipAgent, shipAgent) || other.shipAgent == shipAgent)&&(identical(other.imoNumber, imoNumber) || other.imoNumber == imoNumber)&&(identical(other.weightGrt, weightGrt) || other.weightGrt == weightGrt)&&(identical(other.voyageNumber, voyageNumber) || other.voyageNumber == voyageNumber)&&(identical(other.portName, portName) || other.portName == portName)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.berthNumber, berthNumber) || other.berthNumber == berthNumber)&&(identical(other.berthingDate, berthingDate) || other.berthingDate == berthingDate)&&(identical(other.doctype, doctype) || other.doctype == doctype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,owner,creation,modified,modifiedBy,docstatus,idx,maifestDate,ship,shipAgent,imoNumber,weightGrt,voyageNumber,portName,cargoType,berth,berthNumber,berthingDate,doctype]);

@override
String toString() {
  return 'ManifestDoc(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, maifestDate: $maifestDate, ship: $ship, shipAgent: $shipAgent, imoNumber: $imoNumber, weightGrt: $weightGrt, voyageNumber: $voyageNumber, portName: $portName, cargoType: $cargoType, berth: $berth, berthNumber: $berthNumber, berthingDate: $berthingDate, doctype: $doctype)';
}


}

/// @nodoc
abstract mixin class $ManifestDocCopyWith<$Res>  {
  factory $ManifestDocCopyWith(ManifestDoc value, $Res Function(ManifestDoc) _then) = _$ManifestDocCopyWithImpl;
@useResult
$Res call({
 String? name, String? owner, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, int? docstatus, int? idx,@JsonKey(name: 'maifest_date') String? maifestDate, String? ship,@JsonKey(name: 'ship_agent') String? shipAgent,@JsonKey(name: 'imo_number') String? imoNumber,@JsonKey(name: 'weight_grt') int? weightGrt,@JsonKey(name: 'voyage_number') String? voyageNumber,@JsonKey(name: 'port_name') String? portName,@JsonKey(name: 'cargo_type') String? cargoType, String? berth,@JsonKey(name: 'berth_number') String? berthNumber,@JsonKey(name: 'berthing_date') String? berthingDate, String? doctype
});




}
/// @nodoc
class _$ManifestDocCopyWithImpl<$Res>
    implements $ManifestDocCopyWith<$Res> {
  _$ManifestDocCopyWithImpl(this._self, this._then);

  final ManifestDoc _self;
  final $Res Function(ManifestDoc) _then;

/// Create a copy of ManifestDoc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? owner = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? maifestDate = freezed,Object? ship = freezed,Object? shipAgent = freezed,Object? imoNumber = freezed,Object? weightGrt = freezed,Object? voyageNumber = freezed,Object? portName = freezed,Object? cargoType = freezed,Object? berth = freezed,Object? berthNumber = freezed,Object? berthingDate = freezed,Object? doctype = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,maifestDate: freezed == maifestDate ? _self.maifestDate : maifestDate // ignore: cast_nullable_to_non_nullable
as String?,ship: freezed == ship ? _self.ship : ship // ignore: cast_nullable_to_non_nullable
as String?,shipAgent: freezed == shipAgent ? _self.shipAgent : shipAgent // ignore: cast_nullable_to_non_nullable
as String?,imoNumber: freezed == imoNumber ? _self.imoNumber : imoNumber // ignore: cast_nullable_to_non_nullable
as String?,weightGrt: freezed == weightGrt ? _self.weightGrt : weightGrt // ignore: cast_nullable_to_non_nullable
as int?,voyageNumber: freezed == voyageNumber ? _self.voyageNumber : voyageNumber // ignore: cast_nullable_to_non_nullable
as String?,portName: freezed == portName ? _self.portName : portName // ignore: cast_nullable_to_non_nullable
as String?,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String?,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,berthNumber: freezed == berthNumber ? _self.berthNumber : berthNumber // ignore: cast_nullable_to_non_nullable
as String?,berthingDate: freezed == berthingDate ? _self.berthingDate : berthingDate // ignore: cast_nullable_to_non_nullable
as String?,doctype: freezed == doctype ? _self.doctype : doctype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManifestDoc].
extension ManifestDocPatterns on ManifestDoc {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManifestDoc value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManifestDoc() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManifestDoc value)  $default,){
final _that = this;
switch (_that) {
case _ManifestDoc():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManifestDoc value)?  $default,){
final _that = this;
switch (_that) {
case _ManifestDoc() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'maifest_date')  String? maifestDate,  String? ship, @JsonKey(name: 'ship_agent')  String? shipAgent, @JsonKey(name: 'imo_number')  String? imoNumber, @JsonKey(name: 'weight_grt')  int? weightGrt, @JsonKey(name: 'voyage_number')  String? voyageNumber, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'cargo_type')  String? cargoType,  String? berth, @JsonKey(name: 'berth_number')  String? berthNumber, @JsonKey(name: 'berthing_date')  String? berthingDate,  String? doctype)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManifestDoc() when $default != null:
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.maifestDate,_that.ship,_that.shipAgent,_that.imoNumber,_that.weightGrt,_that.voyageNumber,_that.portName,_that.cargoType,_that.berth,_that.berthNumber,_that.berthingDate,_that.doctype);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'maifest_date')  String? maifestDate,  String? ship, @JsonKey(name: 'ship_agent')  String? shipAgent, @JsonKey(name: 'imo_number')  String? imoNumber, @JsonKey(name: 'weight_grt')  int? weightGrt, @JsonKey(name: 'voyage_number')  String? voyageNumber, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'cargo_type')  String? cargoType,  String? berth, @JsonKey(name: 'berth_number')  String? berthNumber, @JsonKey(name: 'berthing_date')  String? berthingDate,  String? doctype)  $default,) {final _that = this;
switch (_that) {
case _ManifestDoc():
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.maifestDate,_that.ship,_that.shipAgent,_that.imoNumber,_that.weightGrt,_that.voyageNumber,_that.portName,_that.cargoType,_that.berth,_that.berthNumber,_that.berthingDate,_that.doctype);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? owner,  String? creation,  String? modified, @JsonKey(name: 'modified_by')  String? modifiedBy,  int? docstatus,  int? idx, @JsonKey(name: 'maifest_date')  String? maifestDate,  String? ship, @JsonKey(name: 'ship_agent')  String? shipAgent, @JsonKey(name: 'imo_number')  String? imoNumber, @JsonKey(name: 'weight_grt')  int? weightGrt, @JsonKey(name: 'voyage_number')  String? voyageNumber, @JsonKey(name: 'port_name')  String? portName, @JsonKey(name: 'cargo_type')  String? cargoType,  String? berth, @JsonKey(name: 'berth_number')  String? berthNumber, @JsonKey(name: 'berthing_date')  String? berthingDate,  String? doctype)?  $default,) {final _that = this;
switch (_that) {
case _ManifestDoc() when $default != null:
return $default(_that.name,_that.owner,_that.creation,_that.modified,_that.modifiedBy,_that.docstatus,_that.idx,_that.maifestDate,_that.ship,_that.shipAgent,_that.imoNumber,_that.weightGrt,_that.voyageNumber,_that.portName,_that.cargoType,_that.berth,_that.berthNumber,_that.berthingDate,_that.doctype);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManifestDoc implements ManifestDoc {
   _ManifestDoc({this.name, this.owner, this.creation, this.modified, @JsonKey(name: 'modified_by') this.modifiedBy, this.docstatus, this.idx, @JsonKey(name: 'maifest_date') this.maifestDate, this.ship, @JsonKey(name: 'ship_agent') this.shipAgent, @JsonKey(name: 'imo_number') this.imoNumber, @JsonKey(name: 'weight_grt') this.weightGrt, @JsonKey(name: 'voyage_number') this.voyageNumber, @JsonKey(name: 'port_name') this.portName, @JsonKey(name: 'cargo_type') this.cargoType, this.berth, @JsonKey(name: 'berth_number') this.berthNumber, @JsonKey(name: 'berthing_date') this.berthingDate, this.doctype});
  factory _ManifestDoc.fromJson(Map<String, dynamic> json) => _$ManifestDocFromJson(json);

@override final  String? name;
@override final  String? owner;
@override final  String? creation;
@override final  String? modified;
@override@JsonKey(name: 'modified_by') final  String? modifiedBy;
@override final  int? docstatus;
@override final  int? idx;
@override@JsonKey(name: 'maifest_date') final  String? maifestDate;
@override final  String? ship;
@override@JsonKey(name: 'ship_agent') final  String? shipAgent;
@override@JsonKey(name: 'imo_number') final  String? imoNumber;
@override@JsonKey(name: 'weight_grt') final  int? weightGrt;
@override@JsonKey(name: 'voyage_number') final  String? voyageNumber;
@override@JsonKey(name: 'port_name') final  String? portName;
@override@JsonKey(name: 'cargo_type') final  String? cargoType;
@override final  String? berth;
@override@JsonKey(name: 'berth_number') final  String? berthNumber;
@override@JsonKey(name: 'berthing_date') final  String? berthingDate;
@override final  String? doctype;

/// Create a copy of ManifestDoc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManifestDocCopyWith<_ManifestDoc> get copyWith => __$ManifestDocCopyWithImpl<_ManifestDoc>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManifestDocToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManifestDoc&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creation, creation) || other.creation == creation)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.modifiedBy, modifiedBy) || other.modifiedBy == modifiedBy)&&(identical(other.docstatus, docstatus) || other.docstatus == docstatus)&&(identical(other.idx, idx) || other.idx == idx)&&(identical(other.maifestDate, maifestDate) || other.maifestDate == maifestDate)&&(identical(other.ship, ship) || other.ship == ship)&&(identical(other.shipAgent, shipAgent) || other.shipAgent == shipAgent)&&(identical(other.imoNumber, imoNumber) || other.imoNumber == imoNumber)&&(identical(other.weightGrt, weightGrt) || other.weightGrt == weightGrt)&&(identical(other.voyageNumber, voyageNumber) || other.voyageNumber == voyageNumber)&&(identical(other.portName, portName) || other.portName == portName)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.berth, berth) || other.berth == berth)&&(identical(other.berthNumber, berthNumber) || other.berthNumber == berthNumber)&&(identical(other.berthingDate, berthingDate) || other.berthingDate == berthingDate)&&(identical(other.doctype, doctype) || other.doctype == doctype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,owner,creation,modified,modifiedBy,docstatus,idx,maifestDate,ship,shipAgent,imoNumber,weightGrt,voyageNumber,portName,cargoType,berth,berthNumber,berthingDate,doctype]);

@override
String toString() {
  return 'ManifestDoc(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, maifestDate: $maifestDate, ship: $ship, shipAgent: $shipAgent, imoNumber: $imoNumber, weightGrt: $weightGrt, voyageNumber: $voyageNumber, portName: $portName, cargoType: $cargoType, berth: $berth, berthNumber: $berthNumber, berthingDate: $berthingDate, doctype: $doctype)';
}


}

/// @nodoc
abstract mixin class _$ManifestDocCopyWith<$Res> implements $ManifestDocCopyWith<$Res> {
  factory _$ManifestDocCopyWith(_ManifestDoc value, $Res Function(_ManifestDoc) _then) = __$ManifestDocCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? owner, String? creation, String? modified,@JsonKey(name: 'modified_by') String? modifiedBy, int? docstatus, int? idx,@JsonKey(name: 'maifest_date') String? maifestDate, String? ship,@JsonKey(name: 'ship_agent') String? shipAgent,@JsonKey(name: 'imo_number') String? imoNumber,@JsonKey(name: 'weight_grt') int? weightGrt,@JsonKey(name: 'voyage_number') String? voyageNumber,@JsonKey(name: 'port_name') String? portName,@JsonKey(name: 'cargo_type') String? cargoType, String? berth,@JsonKey(name: 'berth_number') String? berthNumber,@JsonKey(name: 'berthing_date') String? berthingDate, String? doctype
});




}
/// @nodoc
class __$ManifestDocCopyWithImpl<$Res>
    implements _$ManifestDocCopyWith<$Res> {
  __$ManifestDocCopyWithImpl(this._self, this._then);

  final _ManifestDoc _self;
  final $Res Function(_ManifestDoc) _then;

/// Create a copy of ManifestDoc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? owner = freezed,Object? creation = freezed,Object? modified = freezed,Object? modifiedBy = freezed,Object? docstatus = freezed,Object? idx = freezed,Object? maifestDate = freezed,Object? ship = freezed,Object? shipAgent = freezed,Object? imoNumber = freezed,Object? weightGrt = freezed,Object? voyageNumber = freezed,Object? portName = freezed,Object? cargoType = freezed,Object? berth = freezed,Object? berthNumber = freezed,Object? berthingDate = freezed,Object? doctype = freezed,}) {
  return _then(_ManifestDoc(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,creation: freezed == creation ? _self.creation : creation // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String?,modifiedBy: freezed == modifiedBy ? _self.modifiedBy : modifiedBy // ignore: cast_nullable_to_non_nullable
as String?,docstatus: freezed == docstatus ? _self.docstatus : docstatus // ignore: cast_nullable_to_non_nullable
as int?,idx: freezed == idx ? _self.idx : idx // ignore: cast_nullable_to_non_nullable
as int?,maifestDate: freezed == maifestDate ? _self.maifestDate : maifestDate // ignore: cast_nullable_to_non_nullable
as String?,ship: freezed == ship ? _self.ship : ship // ignore: cast_nullable_to_non_nullable
as String?,shipAgent: freezed == shipAgent ? _self.shipAgent : shipAgent // ignore: cast_nullable_to_non_nullable
as String?,imoNumber: freezed == imoNumber ? _self.imoNumber : imoNumber // ignore: cast_nullable_to_non_nullable
as String?,weightGrt: freezed == weightGrt ? _self.weightGrt : weightGrt // ignore: cast_nullable_to_non_nullable
as int?,voyageNumber: freezed == voyageNumber ? _self.voyageNumber : voyageNumber // ignore: cast_nullable_to_non_nullable
as String?,portName: freezed == portName ? _self.portName : portName // ignore: cast_nullable_to_non_nullable
as String?,cargoType: freezed == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String?,berth: freezed == berth ? _self.berth : berth // ignore: cast_nullable_to_non_nullable
as String?,berthNumber: freezed == berthNumber ? _self.berthNumber : berthNumber // ignore: cast_nullable_to_non_nullable
as String?,berthingDate: freezed == berthingDate ? _self.berthingDate : berthingDate // ignore: cast_nullable_to_non_nullable
as String?,doctype: freezed == doctype ? _self.doctype : doctype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
