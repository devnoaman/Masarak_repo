// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GlobalState<T,E> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalState<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalState<$T, $E>()';
}


}

/// @nodoc
class $GlobalStateCopyWith<T,E,$Res>  {
$GlobalStateCopyWith(GlobalState<T, E> _, $Res Function(GlobalState<T, E>) __);
}


/// Adds pattern-matching-related methods to [GlobalState].
extension GlobalStatePatterns<T,E> on GlobalState<T, E> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial<T, E> value)?  initial,TResult Function( Empty<T, E> value)?  empty,TResult Function( Loading<T, E> value)?  loading,TResult Function( Loaded<T, E> value)?  loaded,TResult Function( Error<T, E> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Empty() when empty != null:
return empty(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial<T, E> value)  initial,required TResult Function( Empty<T, E> value)  empty,required TResult Function( Loading<T, E> value)  loading,required TResult Function( Loaded<T, E> value)  loaded,required TResult Function( Error<T, E> value)  error,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Empty():
return empty(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial<T, E> value)?  initial,TResult? Function( Empty<T, E> value)?  empty,TResult? Function( Loading<T, E> value)?  loading,TResult? Function( Loaded<T, E> value)?  loaded,TResult? Function( Error<T, E> value)?  error,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Empty() when empty != null:
return empty(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  empty,TResult Function()?  loading,TResult Function( T data)?  loaded,TResult Function( E e)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Empty() when empty != null:
return empty();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.data);case Error() when error != null:
return error(_that.e);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  empty,required TResult Function()  loading,required TResult Function( T data)  loaded,required TResult Function( E e)  error,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Empty():
return empty();case Loading():
return loading();case Loaded():
return loaded(_that.data);case Error():
return error(_that.e);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( T data)?  loaded,TResult? Function( E e)?  error,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Empty() when empty != null:
return empty();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.data);case Error() when error != null:
return error(_that.e);case _:
  return null;

}
}

}

/// @nodoc


class Initial<T,E> extends GlobalState<T, E> {
  const Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalState<$T, $E>.initial()';
}


}




/// @nodoc


class Empty<T,E> extends GlobalState<T, E> {
  const Empty(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalState<$T, $E>.empty()';
}


}




/// @nodoc


class Loading<T,E> extends GlobalState<T, E> {
  const Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalState<$T, $E>.loading()';
}


}




/// @nodoc


class Loaded<T,E> extends GlobalState<T, E> {
  const Loaded({required this.data}): super._();
  

 final  T data;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<T, E, Loaded<T, E>> get copyWith => _$LoadedCopyWithImpl<T, E, Loaded<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded<T, E>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GlobalState<$T, $E>.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<T,E,$Res> implements $GlobalStateCopyWith<T, E, $Res> {
  factory $LoadedCopyWith(Loaded<T, E> value, $Res Function(Loaded<T, E>) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoadedCopyWithImpl<T,E,$Res>
    implements $LoadedCopyWith<T, E, $Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded<T, E> _self;
  final $Res Function(Loaded<T, E>) _then;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Loaded<T, E>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Error<T,E> extends GlobalState<T, E> {
  const Error({required this.e}): super._();
  

 final  E e;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, E, Error<T, E>> get copyWith => _$ErrorCopyWithImpl<T, E, Error<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T, E>&&const DeepCollectionEquality().equals(other.e, e));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(e));

@override
String toString() {
  return 'GlobalState<$T, $E>.error(e: $e)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,E,$Res> implements $GlobalStateCopyWith<T, E, $Res> {
  factory $ErrorCopyWith(Error<T, E> value, $Res Function(Error<T, E>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 E e
});




}
/// @nodoc
class _$ErrorCopyWithImpl<T,E,$Res>
    implements $ErrorCopyWith<T, E, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T, E> _self;
  final $Res Function(Error<T, E>) _then;

/// Create a copy of GlobalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = freezed,}) {
  return _then(Error<T, E>(
e: freezed == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

// dart format on
