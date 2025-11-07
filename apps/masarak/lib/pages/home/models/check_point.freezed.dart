// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckPoint _$CheckPointFromJson(Map<String, dynamic> json) {
  return _CheckPoint.fromJson(json);
}

/// @nodoc
mixin _$CheckPoint {
  @JsonKey(name: 'check_point_name')
  String? get checkPointname => throw _privateConstructorUsedError;

  /// Serializes this CheckPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckPointCopyWith<CheckPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPointCopyWith<$Res> {
  factory $CheckPointCopyWith(
          CheckPoint value, $Res Function(CheckPoint) then) =
      _$CheckPointCopyWithImpl<$Res, CheckPoint>;
  @useResult
  $Res call({@JsonKey(name: 'check_point_name') String? checkPointname});
}

/// @nodoc
class _$CheckPointCopyWithImpl<$Res, $Val extends CheckPoint>
    implements $CheckPointCopyWith<$Res> {
  _$CheckPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkPointname = freezed,
  }) {
    return _then(_value.copyWith(
      checkPointname: freezed == checkPointname
          ? _value.checkPointname
          : checkPointname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPointImplCopyWith<$Res>
    implements $CheckPointCopyWith<$Res> {
  factory _$$CheckPointImplCopyWith(
          _$CheckPointImpl value, $Res Function(_$CheckPointImpl) then) =
      __$$CheckPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'check_point_name') String? checkPointname});
}

/// @nodoc
class __$$CheckPointImplCopyWithImpl<$Res>
    extends _$CheckPointCopyWithImpl<$Res, _$CheckPointImpl>
    implements _$$CheckPointImplCopyWith<$Res> {
  __$$CheckPointImplCopyWithImpl(
      _$CheckPointImpl _value, $Res Function(_$CheckPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkPointname = freezed,
  }) {
    return _then(_$CheckPointImpl(
      checkPointname: freezed == checkPointname
          ? _value.checkPointname
          : checkPointname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckPointImpl with DiagnosticableTreeMixin implements _CheckPoint {
  const _$CheckPointImpl(
      {@JsonKey(name: 'check_point_name') this.checkPointname});

  factory _$CheckPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckPointImplFromJson(json);

  @override
  @JsonKey(name: 'check_point_name')
  final String? checkPointname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckPoint(checkPointname: $checkPointname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckPoint'))
      ..add(DiagnosticsProperty('checkPointname', checkPointname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPointImpl &&
            (identical(other.checkPointname, checkPointname) ||
                other.checkPointname == checkPointname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, checkPointname);

  /// Create a copy of CheckPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPointImplCopyWith<_$CheckPointImpl> get copyWith =>
      __$$CheckPointImplCopyWithImpl<_$CheckPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckPointImplToJson(
      this,
    );
  }
}

abstract class _CheckPoint implements CheckPoint {
  const factory _CheckPoint(
          {@JsonKey(name: 'check_point_name') final String? checkPointname}) =
      _$CheckPointImpl;

  factory _CheckPoint.fromJson(Map<String, dynamic> json) =
      _$CheckPointImpl.fromJson;

  @override
  @JsonKey(name: 'check_point_name')
  String? get checkPointname;

  /// Create a copy of CheckPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPointImplCopyWith<_$CheckPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
