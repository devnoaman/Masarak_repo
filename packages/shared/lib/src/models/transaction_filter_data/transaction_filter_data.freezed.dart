// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionFilterData {

 DateTime? get startDate; DateTime? get endDate; int? get reportType; int? get page;@JsonKey(name: 'per_page') int? get perPage;
/// Create a copy of TransactionFilterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFilterDataCopyWith<TransactionFilterData> get copyWith => _$TransactionFilterDataCopyWithImpl<TransactionFilterData>(this as TransactionFilterData, _$identity);

  /// Serializes this TransactionFilterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFilterData&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.reportType, reportType) || other.reportType == reportType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,reportType,page,perPage);

@override
String toString() {
  return 'TransactionFilterData(startDate: $startDate, endDate: $endDate, reportType: $reportType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $TransactionFilterDataCopyWith<$Res>  {
  factory $TransactionFilterDataCopyWith(TransactionFilterData value, $Res Function(TransactionFilterData) _then) = _$TransactionFilterDataCopyWithImpl;
@useResult
$Res call({
 DateTime? startDate, DateTime? endDate, int? reportType, int? page,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class _$TransactionFilterDataCopyWithImpl<$Res>
    implements $TransactionFilterDataCopyWith<$Res> {
  _$TransactionFilterDataCopyWithImpl(this._self, this._then);

  final TransactionFilterData _self;
  final $Res Function(TransactionFilterData) _then;

/// Create a copy of TransactionFilterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? reportType = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,reportType: freezed == reportType ? _self.reportType : reportType // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionFilterData].
extension TransactionFilterDataPatterns on TransactionFilterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionFilterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionFilterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionFilterData value)  $default,){
final _that = this;
switch (_that) {
case _TransactionFilterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionFilterData value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionFilterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? startDate,  DateTime? endDate,  int? reportType,  int? page, @JsonKey(name: 'per_page')  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionFilterData() when $default != null:
return $default(_that.startDate,_that.endDate,_that.reportType,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? startDate,  DateTime? endDate,  int? reportType,  int? page, @JsonKey(name: 'per_page')  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _TransactionFilterData():
return $default(_that.startDate,_that.endDate,_that.reportType,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? startDate,  DateTime? endDate,  int? reportType,  int? page, @JsonKey(name: 'per_page')  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _TransactionFilterData() when $default != null:
return $default(_that.startDate,_that.endDate,_that.reportType,_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionFilterData extends TransactionFilterData {
   _TransactionFilterData({this.startDate, this.endDate, this.reportType = 0, this.page = 1, @JsonKey(name: 'per_page') this.perPage = 10}): super._();
  factory _TransactionFilterData.fromJson(Map<String, dynamic> json) => _$TransactionFilterDataFromJson(json);

@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override@JsonKey() final  int? reportType;
@override@JsonKey() final  int? page;
@override@JsonKey(name: 'per_page') final  int? perPage;

/// Create a copy of TransactionFilterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFilterDataCopyWith<_TransactionFilterData> get copyWith => __$TransactionFilterDataCopyWithImpl<_TransactionFilterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionFilterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFilterData&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.reportType, reportType) || other.reportType == reportType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,reportType,page,perPage);

@override
String toString() {
  return 'TransactionFilterData(startDate: $startDate, endDate: $endDate, reportType: $reportType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$TransactionFilterDataCopyWith<$Res> implements $TransactionFilterDataCopyWith<$Res> {
  factory _$TransactionFilterDataCopyWith(_TransactionFilterData value, $Res Function(_TransactionFilterData) _then) = __$TransactionFilterDataCopyWithImpl;
@override @useResult
$Res call({
 DateTime? startDate, DateTime? endDate, int? reportType, int? page,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class __$TransactionFilterDataCopyWithImpl<$Res>
    implements _$TransactionFilterDataCopyWith<$Res> {
  __$TransactionFilterDataCopyWithImpl(this._self, this._then);

  final _TransactionFilterData _self;
  final $Res Function(_TransactionFilterData) _then;

/// Create a copy of TransactionFilterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? reportType = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_TransactionFilterData(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,reportType: freezed == reportType ? _self.reportType : reportType // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
