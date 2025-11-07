// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaticSettingModel _$StaticSettingModelFromJson(Map<String, dynamic> json) {
  return _StaticSettingModel.fromJson(json);
}

/// @nodoc
mixin _$StaticSettingModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this StaticSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaticSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaticSettingModelCopyWith<StaticSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticSettingModelCopyWith<$Res> {
  factory $StaticSettingModelCopyWith(
          StaticSettingModel value, $Res Function(StaticSettingModel) then) =
      _$StaticSettingModelCopyWithImpl<$Res, StaticSettingModel>;
  @useResult
  $Res call({String key, String value, String id});
}

/// @nodoc
class _$StaticSettingModelCopyWithImpl<$Res, $Val extends StaticSettingModel>
    implements $StaticSettingModelCopyWith<$Res> {
  _$StaticSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaticSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaticSettingModelImplCopyWith<$Res>
    implements $StaticSettingModelCopyWith<$Res> {
  factory _$$StaticSettingModelImplCopyWith(_$StaticSettingModelImpl value,
          $Res Function(_$StaticSettingModelImpl) then) =
      __$$StaticSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value, String id});
}

/// @nodoc
class __$$StaticSettingModelImplCopyWithImpl<$Res>
    extends _$StaticSettingModelCopyWithImpl<$Res, _$StaticSettingModelImpl>
    implements _$$StaticSettingModelImplCopyWith<$Res> {
  __$$StaticSettingModelImplCopyWithImpl(_$StaticSettingModelImpl _value,
      $Res Function(_$StaticSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaticSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_$StaticSettingModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaticSettingModelImpl implements _StaticSettingModel {
  const _$StaticSettingModelImpl(
      {required this.key, required this.value, required this.id});

  factory _$StaticSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaticSettingModelImplFromJson(json);

  @override
  final String key;
  @override
  final String value;
  @override
  final String id;

  @override
  String toString() {
    return 'StaticSettingModel(key: $key, value: $value, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticSettingModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, id);

  /// Create a copy of StaticSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaticSettingModelImplCopyWith<_$StaticSettingModelImpl> get copyWith =>
      __$$StaticSettingModelImplCopyWithImpl<_$StaticSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaticSettingModelImplToJson(
      this,
    );
  }
}

abstract class _StaticSettingModel implements StaticSettingModel {
  const factory _StaticSettingModel(
      {required final String key,
      required final String value,
      required final String id}) = _$StaticSettingModelImpl;

  factory _StaticSettingModel.fromJson(Map<String, dynamic> json) =
      _$StaticSettingModelImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  String get id;

  /// Create a copy of StaticSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaticSettingModelImplCopyWith<_$StaticSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
