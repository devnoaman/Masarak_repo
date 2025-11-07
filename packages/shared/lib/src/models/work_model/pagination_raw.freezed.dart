// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationRaw {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'page_size') int? get pageSize;@JsonKey(name: 'total_records') int? get totalRecords;@JsonKey(name: 'total_pages') int? get totalPages;
/// Create a copy of PaginationRaw
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationRawCopyWith<PaginationRaw> get copyWith => _$PaginationRawCopyWithImpl<PaginationRaw>(this as PaginationRaw, _$identity);

  /// Serializes this PaginationRaw to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationRaw&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalRecords, totalRecords) || other.totalRecords == totalRecords)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,pageSize,totalRecords,totalPages);

@override
String toString() {
  return 'PaginationRaw(currentPage: $currentPage, pageSize: $pageSize, totalRecords: $totalRecords, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationRawCopyWith<$Res>  {
  factory $PaginationRawCopyWith(PaginationRaw value, $Res Function(PaginationRaw) _then) = _$PaginationRawCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'page_size') int? pageSize,@JsonKey(name: 'total_records') int? totalRecords,@JsonKey(name: 'total_pages') int? totalPages
});




}
/// @nodoc
class _$PaginationRawCopyWithImpl<$Res>
    implements $PaginationRawCopyWith<$Res> {
  _$PaginationRawCopyWithImpl(this._self, this._then);

  final PaginationRaw _self;
  final $Res Function(PaginationRaw) _then;

/// Create a copy of PaginationRaw
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? pageSize = freezed,Object? totalRecords = freezed,Object? totalPages = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalRecords: freezed == totalRecords ? _self.totalRecords : totalRecords // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationRaw].
extension PaginationRawPatterns on PaginationRaw {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationRaw value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationRaw() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationRaw value)  $default,){
final _that = this;
switch (_that) {
case _PaginationRaw():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationRaw value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationRaw() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'page_size')  int? pageSize, @JsonKey(name: 'total_records')  int? totalRecords, @JsonKey(name: 'total_pages')  int? totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationRaw() when $default != null:
return $default(_that.currentPage,_that.pageSize,_that.totalRecords,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'page_size')  int? pageSize, @JsonKey(name: 'total_records')  int? totalRecords, @JsonKey(name: 'total_pages')  int? totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginationRaw():
return $default(_that.currentPage,_that.pageSize,_that.totalRecords,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'page_size')  int? pageSize, @JsonKey(name: 'total_records')  int? totalRecords, @JsonKey(name: 'total_pages')  int? totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationRaw() when $default != null:
return $default(_that.currentPage,_that.pageSize,_that.totalRecords,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationRaw implements PaginationRaw {
   _PaginationRaw({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'page_size') this.pageSize, @JsonKey(name: 'total_records') this.totalRecords, @JsonKey(name: 'total_pages') this.totalPages});
  factory _PaginationRaw.fromJson(Map<String, dynamic> json) => _$PaginationRawFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'page_size') final  int? pageSize;
@override@JsonKey(name: 'total_records') final  int? totalRecords;
@override@JsonKey(name: 'total_pages') final  int? totalPages;

/// Create a copy of PaginationRaw
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationRawCopyWith<_PaginationRaw> get copyWith => __$PaginationRawCopyWithImpl<_PaginationRaw>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationRawToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationRaw&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalRecords, totalRecords) || other.totalRecords == totalRecords)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,pageSize,totalRecords,totalPages);

@override
String toString() {
  return 'PaginationRaw(currentPage: $currentPage, pageSize: $pageSize, totalRecords: $totalRecords, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationRawCopyWith<$Res> implements $PaginationRawCopyWith<$Res> {
  factory _$PaginationRawCopyWith(_PaginationRaw value, $Res Function(_PaginationRaw) _then) = __$PaginationRawCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'page_size') int? pageSize,@JsonKey(name: 'total_records') int? totalRecords,@JsonKey(name: 'total_pages') int? totalPages
});




}
/// @nodoc
class __$PaginationRawCopyWithImpl<$Res>
    implements _$PaginationRawCopyWith<$Res> {
  __$PaginationRawCopyWithImpl(this._self, this._then);

  final _PaginationRaw _self;
  final $Res Function(_PaginationRaw) _then;

/// Create a copy of PaginationRaw
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? pageSize = freezed,Object? totalRecords = freezed,Object? totalPages = freezed,}) {
  return _then(_PaginationRaw(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalRecords: freezed == totalRecords ? _self.totalRecords : totalRecords // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
