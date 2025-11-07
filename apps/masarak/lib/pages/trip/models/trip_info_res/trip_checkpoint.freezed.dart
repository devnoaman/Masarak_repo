// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_checkpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripCheckpoint _$TripCheckpointFromJson(Map<String, dynamic> json) {
  return _TripCheckpoint.fromJson(json);
}

/// @nodoc
mixin _$TripCheckpoint {
  String? get name => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;
  String? get creation => throw _privateConstructorUsedError;
  String? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_by')
  String? get modifiedBy => throw _privateConstructorUsedError;
  int? get docstatus => throw _privateConstructorUsedError;
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_point')
  String? get checkPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'entered_time')
  dynamic get enteredTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'entered_by')
  dynamic get enteredBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'exit_time')
  dynamic get exitTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'done_by')
  dynamic get doneBy => throw _privateConstructorUsedError;
  dynamic get notes => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;
  String? get parentfield => throw _privateConstructorUsedError;
  String? get parenttype => throw _privateConstructorUsedError;
  String? get doctype => throw _privateConstructorUsedError;

  /// Serializes this TripCheckpoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCheckpointCopyWith<TripCheckpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCheckpointCopyWith<$Res> {
  factory $TripCheckpointCopyWith(
          TripCheckpoint value, $Res Function(TripCheckpoint) then) =
      _$TripCheckpointCopyWithImpl<$Res, TripCheckpoint>;
  @useResult
  $Res call(
      {String? name,
      String? owner,
      String? creation,
      String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      int? docstatus,
      int? idx,
      @JsonKey(name: 'check_point') String? checkPoint,
      @JsonKey(name: 'entered_time') dynamic enteredTime,
      @JsonKey(name: 'entered_by') dynamic enteredBy,
      @JsonKey(name: 'exit_time') dynamic exitTime,
      @JsonKey(name: 'done_by') dynamic doneBy,
      dynamic notes,
      String? parent,
      String? parentfield,
      String? parenttype,
      String? doctype});
}

/// @nodoc
class _$TripCheckpointCopyWithImpl<$Res, $Val extends TripCheckpoint>
    implements $TripCheckpointCopyWith<$Res> {
  _$TripCheckpointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? checkPoint = freezed,
    Object? enteredTime = freezed,
    Object? enteredBy = freezed,
    Object? exitTime = freezed,
    Object? doneBy = freezed,
    Object? notes = freezed,
    Object? parent = freezed,
    Object? parentfield = freezed,
    Object? parenttype = freezed,
    Object? doctype = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      checkPoint: freezed == checkPoint
          ? _value.checkPoint
          : checkPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      enteredTime: freezed == enteredTime
          ? _value.enteredTime
          : enteredTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      enteredBy: freezed == enteredBy
          ? _value.enteredBy
          : enteredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doneBy: freezed == doneBy
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      parentfield: freezed == parentfield
          ? _value.parentfield
          : parentfield // ignore: cast_nullable_to_non_nullable
              as String?,
      parenttype: freezed == parenttype
          ? _value.parenttype
          : parenttype // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripCheckpointImplCopyWith<$Res>
    implements $TripCheckpointCopyWith<$Res> {
  factory _$$TripCheckpointImplCopyWith(_$TripCheckpointImpl value,
          $Res Function(_$TripCheckpointImpl) then) =
      __$$TripCheckpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? owner,
      String? creation,
      String? modified,
      @JsonKey(name: 'modified_by') String? modifiedBy,
      int? docstatus,
      int? idx,
      @JsonKey(name: 'check_point') String? checkPoint,
      @JsonKey(name: 'entered_time') dynamic enteredTime,
      @JsonKey(name: 'entered_by') dynamic enteredBy,
      @JsonKey(name: 'exit_time') dynamic exitTime,
      @JsonKey(name: 'done_by') dynamic doneBy,
      dynamic notes,
      String? parent,
      String? parentfield,
      String? parenttype,
      String? doctype});
}

/// @nodoc
class __$$TripCheckpointImplCopyWithImpl<$Res>
    extends _$TripCheckpointCopyWithImpl<$Res, _$TripCheckpointImpl>
    implements _$$TripCheckpointImplCopyWith<$Res> {
  __$$TripCheckpointImplCopyWithImpl(
      _$TripCheckpointImpl _value, $Res Function(_$TripCheckpointImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? creation = freezed,
    Object? modified = freezed,
    Object? modifiedBy = freezed,
    Object? docstatus = freezed,
    Object? idx = freezed,
    Object? checkPoint = freezed,
    Object? enteredTime = freezed,
    Object? enteredBy = freezed,
    Object? exitTime = freezed,
    Object? doneBy = freezed,
    Object? notes = freezed,
    Object? parent = freezed,
    Object? parentfield = freezed,
    Object? parenttype = freezed,
    Object? doctype = freezed,
  }) {
    return _then(_$TripCheckpointImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as int?,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      checkPoint: freezed == checkPoint
          ? _value.checkPoint
          : checkPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      enteredTime: freezed == enteredTime
          ? _value.enteredTime
          : enteredTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      enteredBy: freezed == enteredBy
          ? _value.enteredBy
          : enteredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doneBy: freezed == doneBy
          ? _value.doneBy
          : doneBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      parentfield: freezed == parentfield
          ? _value.parentfield
          : parentfield // ignore: cast_nullable_to_non_nullable
              as String?,
      parenttype: freezed == parenttype
          ? _value.parenttype
          : parenttype // ignore: cast_nullable_to_non_nullable
              as String?,
      doctype: freezed == doctype
          ? _value.doctype
          : doctype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripCheckpointImpl implements _TripCheckpoint {
  _$TripCheckpointImpl(
      {this.name,
      this.owner,
      this.creation,
      this.modified,
      @JsonKey(name: 'modified_by') this.modifiedBy,
      this.docstatus,
      this.idx,
      @JsonKey(name: 'check_point') this.checkPoint,
      @JsonKey(name: 'entered_time') this.enteredTime,
      @JsonKey(name: 'entered_by') this.enteredBy,
      @JsonKey(name: 'exit_time') this.exitTime,
      @JsonKey(name: 'done_by') this.doneBy,
      this.notes,
      this.parent,
      this.parentfield,
      this.parenttype,
      this.doctype});

  factory _$TripCheckpointImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripCheckpointImplFromJson(json);

  @override
  final String? name;
  @override
  final String? owner;
  @override
  final String? creation;
  @override
  final String? modified;
  @override
  @JsonKey(name: 'modified_by')
  final String? modifiedBy;
  @override
  final int? docstatus;
  @override
  final int? idx;
  @override
  @JsonKey(name: 'check_point')
  final String? checkPoint;
  @override
  @JsonKey(name: 'entered_time')
  final dynamic enteredTime;
  @override
  @JsonKey(name: 'entered_by')
  final dynamic enteredBy;
  @override
  @JsonKey(name: 'exit_time')
  final dynamic exitTime;
  @override
  @JsonKey(name: 'done_by')
  final dynamic doneBy;
  @override
  final dynamic notes;
  @override
  final String? parent;
  @override
  final String? parentfield;
  @override
  final String? parenttype;
  @override
  final String? doctype;

  @override
  String toString() {
    return 'TripCheckpoint(name: $name, owner: $owner, creation: $creation, modified: $modified, modifiedBy: $modifiedBy, docstatus: $docstatus, idx: $idx, checkPoint: $checkPoint, enteredTime: $enteredTime, enteredBy: $enteredBy, exitTime: $exitTime, doneBy: $doneBy, notes: $notes, parent: $parent, parentfield: $parentfield, parenttype: $parenttype, doctype: $doctype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripCheckpointImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.checkPoint, checkPoint) ||
                other.checkPoint == checkPoint) &&
            const DeepCollectionEquality()
                .equals(other.enteredTime, enteredTime) &&
            const DeepCollectionEquality().equals(other.enteredBy, enteredBy) &&
            const DeepCollectionEquality().equals(other.exitTime, exitTime) &&
            const DeepCollectionEquality().equals(other.doneBy, doneBy) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.parentfield, parentfield) ||
                other.parentfield == parentfield) &&
            (identical(other.parenttype, parenttype) ||
                other.parenttype == parenttype) &&
            (identical(other.doctype, doctype) || other.doctype == doctype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      owner,
      creation,
      modified,
      modifiedBy,
      docstatus,
      idx,
      checkPoint,
      const DeepCollectionEquality().hash(enteredTime),
      const DeepCollectionEquality().hash(enteredBy),
      const DeepCollectionEquality().hash(exitTime),
      const DeepCollectionEquality().hash(doneBy),
      const DeepCollectionEquality().hash(notes),
      parent,
      parentfield,
      parenttype,
      doctype);

  /// Create a copy of TripCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripCheckpointImplCopyWith<_$TripCheckpointImpl> get copyWith =>
      __$$TripCheckpointImplCopyWithImpl<_$TripCheckpointImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripCheckpointImplToJson(
      this,
    );
  }
}

abstract class _TripCheckpoint implements TripCheckpoint {
  factory _TripCheckpoint(
      {final String? name,
      final String? owner,
      final String? creation,
      final String? modified,
      @JsonKey(name: 'modified_by') final String? modifiedBy,
      final int? docstatus,
      final int? idx,
      @JsonKey(name: 'check_point') final String? checkPoint,
      @JsonKey(name: 'entered_time') final dynamic enteredTime,
      @JsonKey(name: 'entered_by') final dynamic enteredBy,
      @JsonKey(name: 'exit_time') final dynamic exitTime,
      @JsonKey(name: 'done_by') final dynamic doneBy,
      final dynamic notes,
      final String? parent,
      final String? parentfield,
      final String? parenttype,
      final String? doctype}) = _$TripCheckpointImpl;

  factory _TripCheckpoint.fromJson(Map<String, dynamic> json) =
      _$TripCheckpointImpl.fromJson;

  @override
  String? get name;
  @override
  String? get owner;
  @override
  String? get creation;
  @override
  String? get modified;
  @override
  @JsonKey(name: 'modified_by')
  String? get modifiedBy;
  @override
  int? get docstatus;
  @override
  int? get idx;
  @override
  @JsonKey(name: 'check_point')
  String? get checkPoint;
  @override
  @JsonKey(name: 'entered_time')
  dynamic get enteredTime;
  @override
  @JsonKey(name: 'entered_by')
  dynamic get enteredBy;
  @override
  @JsonKey(name: 'exit_time')
  dynamic get exitTime;
  @override
  @JsonKey(name: 'done_by')
  dynamic get doneBy;
  @override
  dynamic get notes;
  @override
  String? get parent;
  @override
  String? get parentfield;
  @override
  String? get parenttype;
  @override
  String? get doctype;

  /// Create a copy of TripCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripCheckpointImplCopyWith<_$TripCheckpointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
