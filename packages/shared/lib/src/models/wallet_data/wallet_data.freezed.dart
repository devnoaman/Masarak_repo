// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletData {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'data') List<TransactionData>? get data;@JsonKey(name: 'first_page_url') String? get firstPageUrl; int? get from;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'last_page_url') String? get lastPageUrl; List<Link>? get links;@JsonKey(name: 'next_page_url') String? get nextPageUrl; String? get path;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'prev_page_url') dynamic get prevPageUrl; int? get to; int? get total;
/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletDataCopyWith<WalletData> get copyWith => _$WalletDataCopyWithImpl<WalletData>(this as WalletData, _$identity);

  /// Serializes this WalletData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletData&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other.links, links)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(links),nextPageUrl,path,perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'WalletData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $WalletDataCopyWith<$Res>  {
  factory $WalletDataCopyWith(WalletData value, $Res Function(WalletData) _then) = _$WalletDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'data') List<TransactionData>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl, List<Link>? links,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') dynamic prevPageUrl, int? to, int? total
});




}
/// @nodoc
class _$WalletDataCopyWithImpl<$Res>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._self, this._then);

  final WalletData _self;
  final $Res Function(WalletData) _then;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TransactionData>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletData].
extension WalletDataPatterns on WalletData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletData value)  $default,){
final _that = this;
switch (_that) {
case _WalletData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletData value)?  $default,){
final _that = this;
switch (_that) {
case _WalletData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<TransactionData>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<Link>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletData() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<TransactionData>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<Link>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)  $default,) {final _that = this;
switch (_that) {
case _WalletData():
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<TransactionData>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl,  List<Link>? links, @JsonKey(name: 'next_page_url')  String? nextPageUrl,  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  dynamic prevPageUrl,  int? to,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _WalletData() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.links,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletData implements WalletData {
   _WalletData({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'data') final  List<TransactionData>? data, @JsonKey(name: 'first_page_url') this.firstPageUrl, this.from, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'last_page_url') this.lastPageUrl, final  List<Link>? links, @JsonKey(name: 'next_page_url') this.nextPageUrl, this.path, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'prev_page_url') this.prevPageUrl, this.to, this.total}): _data = data,_links = links;
  factory _WalletData.fromJson(Map<String, dynamic> json) => _$WalletDataFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
 final  List<TransactionData>? _data;
@override@JsonKey(name: 'data') List<TransactionData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'first_page_url') final  String? firstPageUrl;
@override final  int? from;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'last_page_url') final  String? lastPageUrl;
 final  List<Link>? _links;
@override List<Link>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'next_page_url') final  String? nextPageUrl;
@override final  String? path;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'prev_page_url') final  dynamic prevPageUrl;
@override final  int? to;
@override final  int? total;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletDataCopyWith<_WalletData> get copyWith => __$WalletDataCopyWithImpl<_WalletData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletData&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&const DeepCollectionEquality().equals(other._links, _links)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.prevPageUrl, prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_data),firstPageUrl,from,lastPage,lastPageUrl,const DeepCollectionEquality().hash(_links),nextPageUrl,path,perPage,const DeepCollectionEquality().hash(prevPageUrl),to,total);

@override
String toString() {
  return 'WalletData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$WalletDataCopyWith<$Res> implements $WalletDataCopyWith<$Res> {
  factory _$WalletDataCopyWith(_WalletData value, $Res Function(_WalletData) _then) = __$WalletDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'data') List<TransactionData>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl, List<Link>? links,@JsonKey(name: 'next_page_url') String? nextPageUrl, String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') dynamic prevPageUrl, int? to, int? total
});




}
/// @nodoc
class __$WalletDataCopyWithImpl<$Res>
    implements _$WalletDataCopyWith<$Res> {
  __$WalletDataCopyWithImpl(this._self, this._then);

  final _WalletData _self;
  final $Res Function(_WalletData) _then;

/// Create a copy of WalletData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? links = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_WalletData(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TransactionData>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
