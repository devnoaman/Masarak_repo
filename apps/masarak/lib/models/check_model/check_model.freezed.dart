// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckModel _$CheckModelFromJson(Map<String, dynamic> json) {
  return _CheckModel.fromJson(json);
}

/// @nodoc
mixin _$CheckModel {
  int? get id => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  DateTime? get checkedAt => throw _privateConstructorUsedError;

  /// Serializes this CheckModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckModelCopyWith<CheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckModelCopyWith<$Res> {
  factory $CheckModelCopyWith(
          CheckModel value, $Res Function(CheckModel) then) =
      _$CheckModelCopyWithImpl<$Res, CheckModel>;
  @useResult
  $Res call({int? id, String? barcode, DateTime? checkedAt});
}

/// @nodoc
class _$CheckModelCopyWithImpl<$Res, $Val extends CheckModel>
    implements $CheckModelCopyWith<$Res> {
  _$CheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? checkedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedAt: freezed == checkedAt
          ? _value.checkedAt
          : checkedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckModelImplCopyWith<$Res>
    implements $CheckModelCopyWith<$Res> {
  factory _$$CheckModelImplCopyWith(
          _$CheckModelImpl value, $Res Function(_$CheckModelImpl) then) =
      __$$CheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? barcode, DateTime? checkedAt});
}

/// @nodoc
class __$$CheckModelImplCopyWithImpl<$Res>
    extends _$CheckModelCopyWithImpl<$Res, _$CheckModelImpl>
    implements _$$CheckModelImplCopyWith<$Res> {
  __$$CheckModelImplCopyWithImpl(
      _$CheckModelImpl _value, $Res Function(_$CheckModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? checkedAt = freezed,
  }) {
    return _then(_$CheckModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedAt: freezed == checkedAt
          ? _value.checkedAt
          : checkedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckModelImpl implements _CheckModel {
  _$CheckModelImpl({this.id, this.barcode, this.checkedAt});

  factory _$CheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? barcode;
  @override
  final DateTime? checkedAt;

  @override
  String toString() {
    return 'CheckModel(id: $id, barcode: $barcode, checkedAt: $checkedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.checkedAt, checkedAt) ||
                other.checkedAt == checkedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, barcode, checkedAt);

  /// Create a copy of CheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckModelImplCopyWith<_$CheckModelImpl> get copyWith =>
      __$$CheckModelImplCopyWithImpl<_$CheckModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckModelImplToJson(
      this,
    );
  }
}

abstract class _CheckModel implements CheckModel {
  factory _CheckModel(
      {final int? id,
      final String? barcode,
      final DateTime? checkedAt}) = _$CheckModelImpl;

  factory _CheckModel.fromJson(Map<String, dynamic> json) =
      _$CheckModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get barcode;
  @override
  DateTime? get checkedAt;

  /// Create a copy of CheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckModelImplCopyWith<_$CheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
