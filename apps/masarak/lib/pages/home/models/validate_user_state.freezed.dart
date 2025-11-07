// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateUser _$ValidateUserFromJson(Map<String, dynamic> json) {
  return _ValidateUser.fromJson(json);
}

/// @nodoc
mixin _$ValidateUser {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this ValidateUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateUserCopyWith<ValidateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateUserCopyWith<$Res> {
  factory $ValidateUserCopyWith(
          ValidateUser value, $Res Function(ValidateUser) then) =
      _$ValidateUserCopyWithImpl<$Res, ValidateUser>;
  @useResult
  $Res call({String? errorMessage, bool isLoading});
}

/// @nodoc
class _$ValidateUserCopyWithImpl<$Res, $Val extends ValidateUser>
    implements $ValidateUserCopyWith<$Res> {
  _$ValidateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateUserImplCopyWith<$Res>
    implements $ValidateUserCopyWith<$Res> {
  factory _$$ValidateUserImplCopyWith(
          _$ValidateUserImpl value, $Res Function(_$ValidateUserImpl) then) =
      __$$ValidateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage, bool isLoading});
}

/// @nodoc
class __$$ValidateUserImplCopyWithImpl<$Res>
    extends _$ValidateUserCopyWithImpl<$Res, _$ValidateUserImpl>
    implements _$$ValidateUserImplCopyWith<$Res> {
  __$$ValidateUserImplCopyWithImpl(
      _$ValidateUserImpl _value, $Res Function(_$ValidateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ValidateUserImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateUserImpl with DiagnosticableTreeMixin implements _ValidateUser {
  const _$ValidateUserImpl({this.errorMessage, this.isLoading = false});

  factory _$ValidateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateUserImplFromJson(json);

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidateUser(errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidateUser'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateUserImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, isLoading);

  /// Create a copy of ValidateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateUserImplCopyWith<_$ValidateUserImpl> get copyWith =>
      __$$ValidateUserImplCopyWithImpl<_$ValidateUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateUserImplToJson(
      this,
    );
  }
}

abstract class _ValidateUser implements ValidateUser {
  const factory _ValidateUser(
      {final String? errorMessage, final bool isLoading}) = _$ValidateUserImpl;

  factory _ValidateUser.fromJson(Map<String, dynamic> json) =
      _$ValidateUserImpl.fromJson;

  @override
  String? get errorMessage;
  @override
  bool get isLoading;

  /// Create a copy of ValidateUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateUserImplCopyWith<_$ValidateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
