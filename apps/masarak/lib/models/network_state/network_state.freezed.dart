// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<T, $Res> {
  factory $NetworkStateCopyWith(
          NetworkState<T> value, $Res Function(NetworkState<T>) then) =
      _$NetworkStateCopyWithImpl<T, $Res, NetworkState<T>>;
}

/// @nodoc
class _$NetworkStateCopyWithImpl<T, $Res, $Val extends NetworkState<T>>
    implements $NetworkStateCopyWith<T, $Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkStateInitialImplCopyWith<T, $Res> {
  factory _$$NetworkStateInitialImplCopyWith(_$NetworkStateInitialImpl<T> value,
          $Res Function(_$NetworkStateInitialImpl<T>) then) =
      __$$NetworkStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkStateInitialImplCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res, _$NetworkStateInitialImpl<T>>
    implements _$$NetworkStateInitialImplCopyWith<T, $Res> {
  __$$NetworkStateInitialImplCopyWithImpl(_$NetworkStateInitialImpl<T> _value,
      $Res Function(_$NetworkStateInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkStateInitialImpl<T> implements NetworkStateInitial<T> {
  const _$NetworkStateInitialImpl();

  @override
  String toString() {
    return 'NetworkState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NetworkStateInitial<T> implements NetworkState<T> {
  const factory NetworkStateInitial() = _$NetworkStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$NetworkStateLoadingImplCopyWith<T, $Res> {
  factory _$$NetworkStateLoadingImplCopyWith(_$NetworkStateLoadingImpl<T> value,
          $Res Function(_$NetworkStateLoadingImpl<T>) then) =
      __$$NetworkStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkStateLoadingImplCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res, _$NetworkStateLoadingImpl<T>>
    implements _$$NetworkStateLoadingImplCopyWith<T, $Res> {
  __$$NetworkStateLoadingImplCopyWithImpl(_$NetworkStateLoadingImpl<T> _value,
      $Res Function(_$NetworkStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkStateLoadingImpl<T> implements NetworkStateLoading<T> {
  const _$NetworkStateLoadingImpl();

  @override
  String toString() {
    return 'NetworkState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NetworkStateLoading<T> implements NetworkState<T> {
  const factory NetworkStateLoading() = _$NetworkStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$NetworkStateEmptyImplCopyWith<T, $Res> {
  factory _$$NetworkStateEmptyImplCopyWith(_$NetworkStateEmptyImpl<T> value,
          $Res Function(_$NetworkStateEmptyImpl<T>) then) =
      __$$NetworkStateEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkStateEmptyImplCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res, _$NetworkStateEmptyImpl<T>>
    implements _$$NetworkStateEmptyImplCopyWith<T, $Res> {
  __$$NetworkStateEmptyImplCopyWithImpl(_$NetworkStateEmptyImpl<T> _value,
      $Res Function(_$NetworkStateEmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkStateEmptyImpl<T> implements NetworkStateEmpty<T> {
  const _$NetworkStateEmptyImpl();

  @override
  String toString() {
    return 'NetworkState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class NetworkStateEmpty<T> implements NetworkState<T> {
  const factory NetworkStateEmpty() = _$NetworkStateEmptyImpl<T>;
}

/// @nodoc
abstract class _$$NetworkStateLoadedImplCopyWith<T, $Res> {
  factory _$$NetworkStateLoadedImplCopyWith(_$NetworkStateLoadedImpl<T> value,
          $Res Function(_$NetworkStateLoadedImpl<T>) then) =
      __$$NetworkStateLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, T res});
}

/// @nodoc
class __$$NetworkStateLoadedImplCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res, _$NetworkStateLoadedImpl<T>>
    implements _$$NetworkStateLoadedImplCopyWith<T, $Res> {
  __$$NetworkStateLoadedImplCopyWithImpl(_$NetworkStateLoadedImpl<T> _value,
      $Res Function(_$NetworkStateLoadedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? res = freezed,
  }) {
    return _then(_$NetworkStateLoadedImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      res: freezed == res
          ? _value.res
          : res // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NetworkStateLoadedImpl<T> implements NetworkStateLoaded<T> {
  const _$NetworkStateLoadedImpl({required this.message, required this.res});

  @override
  final String message;
  @override
  final T res;

  @override
  String toString() {
    return 'NetworkState<$T>.loaded(message: $message, res: $res)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateLoadedImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.res, res));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(res));

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkStateLoadedImplCopyWith<T, _$NetworkStateLoadedImpl<T>>
      get copyWith => __$$NetworkStateLoadedImplCopyWithImpl<T,
          _$NetworkStateLoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) {
    return loaded(message, res);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) {
    return loaded?.call(message, res);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(message, res);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NetworkStateLoaded<T> implements NetworkState<T> {
  const factory NetworkStateLoaded(
      {required final String message,
      required final T res}) = _$NetworkStateLoadedImpl<T>;

  String get message;
  T get res;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkStateLoadedImplCopyWith<T, _$NetworkStateLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkStateErrorImplCopyWith<T, $Res> {
  factory _$$NetworkStateErrorImplCopyWith(_$NetworkStateErrorImpl<T> value,
          $Res Function(_$NetworkStateErrorImpl<T>) then) =
      __$$NetworkStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$NetworkStateErrorImplCopyWithImpl<T, $Res>
    extends _$NetworkStateCopyWithImpl<T, $Res, _$NetworkStateErrorImpl<T>>
    implements _$$NetworkStateErrorImplCopyWith<T, $Res> {
  __$$NetworkStateErrorImplCopyWithImpl(_$NetworkStateErrorImpl<T> _value,
      $Res Function(_$NetworkStateErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$NetworkStateErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$NetworkStateErrorImpl<T> implements NetworkStateError<T> {
  const _$NetworkStateErrorImpl({required this.message, this.stackTrace});

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'NetworkState<$T>.error(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateErrorImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkStateErrorImplCopyWith<T, _$NetworkStateErrorImpl<T>>
      get copyWith =>
          __$$NetworkStateErrorImplCopyWithImpl<T, _$NetworkStateErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(String message, T res) loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
  }) {
    return error(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(String message, T res)? loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
  }) {
    return error?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(String message, T res)? loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateInitial<T> value) initial,
    required TResult Function(NetworkStateLoading<T> value) loading,
    required TResult Function(NetworkStateEmpty<T> value) empty,
    required TResult Function(NetworkStateLoaded<T> value) loaded,
    required TResult Function(NetworkStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStateInitial<T> value)? initial,
    TResult? Function(NetworkStateLoading<T> value)? loading,
    TResult? Function(NetworkStateEmpty<T> value)? empty,
    TResult? Function(NetworkStateLoaded<T> value)? loaded,
    TResult? Function(NetworkStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateInitial<T> value)? initial,
    TResult Function(NetworkStateLoading<T> value)? loading,
    TResult Function(NetworkStateEmpty<T> value)? empty,
    TResult Function(NetworkStateLoaded<T> value)? loaded,
    TResult Function(NetworkStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NetworkStateError<T> implements NetworkState<T> {
  const factory NetworkStateError(
      {required final String message,
      final StackTrace? stackTrace}) = _$NetworkStateErrorImpl<T>;

  String get message;
  StackTrace? get stackTrace;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkStateErrorImplCopyWith<T, _$NetworkStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
