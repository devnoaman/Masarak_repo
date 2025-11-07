// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedRes<T> {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'next_page_url') String? get nextPageUrl; String? get path; List<T> get data;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'prev_page_url') dynamic get prevPageUrl; int? get to; int? get total;
/// Create a copy of PaginatedRes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResCopyWith<T, PaginatedRes<T>> get copyWith => _$PaginatedResCopyWithImpl<T, PaginatedRes<T>>(this as PaginatedRes<T>, _$identity);

  /// Serializes this PaginatedRes to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedRes<T>&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,nextPageUrl,path,const DeepCollectionEquality().hash(data),perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'PaginatedRes<$T>(currentPage: $currentPage, nextPageUrl: $nextPageUrl, path: $path, data: $data, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $PaginatedResCopyWith<T,$Res>  {
  factory $PaginatedResCopyWith(PaginatedRes<T> value, $Res Function(PaginatedRes<T>) _then) = _$PaginatedResCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path, List<T> data,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') dynamic prevPageUrl, int? to, int? total
});




}
/// @nodoc
class _$PaginatedResCopyWithImpl<T,$Res>
    implements $PaginatedResCopyWith<T, $Res> {
  _$PaginatedResCopyWithImpl(this._self, this._then);

  final PaginatedRes<T> _self;
  final $Res Function(PaginatedRes<T>) _then;

/// Create a copy of PaginatedRes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? data = null,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedRes].
extension PaginatedResPatterns<T> on PaginatedRes<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedRes<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedRes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedRes<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedRes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedRes<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedRes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path,  List<T> data, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedRes() when $default != null:
return $default(_that.currentPage,_that.nextPageUrl,_that.path,_that.data,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path,  List<T> data, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)  $default,) {final _that = this;
switch (_that) {
case _PaginatedRes():
return $default(_that.currentPage,_that.nextPageUrl,_that.path,_that.data,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path,  List<T> data, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedRes() when $default != null:
return $default(_that.currentPage,_that.nextPageUrl,_that.path,_that.data,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PaginatedRes<T> implements PaginatedRes<T> {
   _PaginatedRes({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'next_page_url') this.nextPageUrl, this.path, final  List<T> data = const [], @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'prev_page_url') this.prevPageUrl, this.to, this.total}): _data = data;
  factory _PaginatedRes.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginatedResFromJson(json,fromJsonT);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'next_page_url') final  String? nextPageUrl;
@override final  String? path;
 final  List<T> _data;
@override@JsonKey() List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'prev_page_url') final  dynamic prevPageUrl;
@override final  int? to;
@override final  int? total;

/// Create a copy of PaginatedRes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResCopyWith<T, _PaginatedRes<T>> get copyWith => __$PaginatedResCopyWithImpl<T, _PaginatedRes<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginatedResToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedRes<T>&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,nextPageUrl,path,const DeepCollectionEquality().hash(_data),perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'PaginatedRes<$T>(currentPage: $currentPage, nextPageUrl: $nextPageUrl, path: $path, data: $data, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResCopyWith<T,$Res> implements $PaginatedResCopyWith<T, $Res> {
  factory _$PaginatedResCopyWith(_PaginatedRes<T> value, $Res Function(_PaginatedRes<T>) _then) = __$PaginatedResCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path, List<T> data,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') dynamic prevPageUrl, int? to, int? total
});




}
/// @nodoc
class __$PaginatedResCopyWithImpl<T,$Res>
    implements _$PaginatedResCopyWith<T, $Res> {
  __$PaginatedResCopyWithImpl(this._self, this._then);

  final _PaginatedRes<T> _self;
  final $Res Function(_PaginatedRes<T>) _then;

/// Create a copy of PaginatedRes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? data = null,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_PaginatedRes<T>(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
