// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_info_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripInfoRes _$TripInfoResFromJson(Map<String, dynamic> json) {
  return _TripInfoRes.fromJson(json);
}

/// @nodoc
mixin _$TripInfoRes {
  Message? get message => throw _privateConstructorUsedError;

  /// Serializes this TripInfoRes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripInfoResCopyWith<TripInfoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripInfoResCopyWith<$Res> {
  factory $TripInfoResCopyWith(
          TripInfoRes value, $Res Function(TripInfoRes) then) =
      _$TripInfoResCopyWithImpl<$Res, TripInfoRes>;
  @useResult
  $Res call({Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$TripInfoResCopyWithImpl<$Res, $Val extends TripInfoRes>
    implements $TripInfoResCopyWith<$Res> {
  _$TripInfoResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripInfoResImplCopyWith<$Res>
    implements $TripInfoResCopyWith<$Res> {
  factory _$$TripInfoResImplCopyWith(
          _$TripInfoResImpl value, $Res Function(_$TripInfoResImpl) then) =
      __$$TripInfoResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$TripInfoResImplCopyWithImpl<$Res>
    extends _$TripInfoResCopyWithImpl<$Res, _$TripInfoResImpl>
    implements _$$TripInfoResImplCopyWith<$Res> {
  __$$TripInfoResImplCopyWithImpl(
      _$TripInfoResImpl _value, $Res Function(_$TripInfoResImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TripInfoResImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripInfoResImpl extends _TripInfoRes {
  _$TripInfoResImpl({this.message}) : super._();

  factory _$TripInfoResImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripInfoResImplFromJson(json);

  @override
  final Message? message;

  @override
  String toString() {
    return 'TripInfoRes(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripInfoResImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripInfoResImplCopyWith<_$TripInfoResImpl> get copyWith =>
      __$$TripInfoResImplCopyWithImpl<_$TripInfoResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripInfoResImplToJson(
      this,
    );
  }
}

abstract class _TripInfoRes extends TripInfoRes {
  factory _TripInfoRes({final Message? message}) = _$TripInfoResImpl;
  _TripInfoRes._() : super._();

  factory _TripInfoRes.fromJson(Map<String, dynamic> json) =
      _$TripInfoResImpl.fromJson;

  @override
  Message? get message;

  /// Create a copy of TripInfoRes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripInfoResImplCopyWith<_$TripInfoResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
