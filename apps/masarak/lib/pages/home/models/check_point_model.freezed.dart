// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckPointState _$CheckPointStateFromJson(Map<String, dynamic> json) {
  return _CheckPointState.fromJson(json);
}

/// @nodoc
mixin _$CheckPointState {
  String? get errorMessage => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<CheckPoint> get checkPoints => throw _privateConstructorUsedError;

  /// Serializes this CheckPointState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckPointStateCopyWith<CheckPointState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPointStateCopyWith<$Res> {
  factory $CheckPointStateCopyWith(
          CheckPointState value, $Res Function(CheckPointState) then) =
      _$CheckPointStateCopyWithImpl<$Res, CheckPointState>;
  @useResult
  $Res call(
      {String? errorMessage,
      int? statusCode,
      bool isLoading,
      List<CheckPoint> checkPoints});
}

/// @nodoc
class _$CheckPointStateCopyWithImpl<$Res, $Val extends CheckPointState>
    implements $CheckPointStateCopyWith<$Res> {
  _$CheckPointStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckPointState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? statusCode = freezed,
    Object? isLoading = null,
    Object? checkPoints = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkPoints: null == checkPoints
          ? _value.checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPointStateImplCopyWith<$Res>
    implements $CheckPointStateCopyWith<$Res> {
  factory _$$CheckPointStateImplCopyWith(_$CheckPointStateImpl value,
          $Res Function(_$CheckPointStateImpl) then) =
      __$$CheckPointStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      int? statusCode,
      bool isLoading,
      List<CheckPoint> checkPoints});
}

/// @nodoc
class __$$CheckPointStateImplCopyWithImpl<$Res>
    extends _$CheckPointStateCopyWithImpl<$Res, _$CheckPointStateImpl>
    implements _$$CheckPointStateImplCopyWith<$Res> {
  __$$CheckPointStateImplCopyWithImpl(
      _$CheckPointStateImpl _value, $Res Function(_$CheckPointStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckPointState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? statusCode = freezed,
    Object? isLoading = null,
    Object? checkPoints = null,
  }) {
    return _then(_$CheckPointStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkPoints: null == checkPoints
          ? _value._checkPoints
          : checkPoints // ignore: cast_nullable_to_non_nullable
              as List<CheckPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckPointStateImpl
    with DiagnosticableTreeMixin
    implements _CheckPointState {
  const _$CheckPointStateImpl(
      {this.errorMessage,
      this.statusCode,
      this.isLoading = false,
      final List<CheckPoint> checkPoints = const []})
      : _checkPoints = checkPoints;

  factory _$CheckPointStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckPointStateImplFromJson(json);

  @override
  final String? errorMessage;
  @override
  final int? statusCode;
  @override
  @JsonKey()
  final bool isLoading;
  final List<CheckPoint> _checkPoints;
  @override
  @JsonKey()
  List<CheckPoint> get checkPoints {
    if (_checkPoints is EqualUnmodifiableListView) return _checkPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkPoints);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckPointState(errorMessage: $errorMessage, statusCode: $statusCode, isLoading: $isLoading, checkPoints: $checkPoints)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckPointState'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('checkPoints', checkPoints));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPointStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._checkPoints, _checkPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, statusCode,
      isLoading, const DeepCollectionEquality().hash(_checkPoints));

  /// Create a copy of CheckPointState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPointStateImplCopyWith<_$CheckPointStateImpl> get copyWith =>
      __$$CheckPointStateImplCopyWithImpl<_$CheckPointStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckPointStateImplToJson(
      this,
    );
  }
}

abstract class _CheckPointState implements CheckPointState {
  const factory _CheckPointState(
      {final String? errorMessage,
      final int? statusCode,
      final bool isLoading,
      final List<CheckPoint> checkPoints}) = _$CheckPointStateImpl;

  factory _CheckPointState.fromJson(Map<String, dynamic> json) =
      _$CheckPointStateImpl.fromJson;

  @override
  String? get errorMessage;
  @override
  int? get statusCode;
  @override
  bool get isLoading;
  @override
  List<CheckPoint> get checkPoints;

  /// Create a copy of CheckPointState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPointStateImplCopyWith<_$CheckPointStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
