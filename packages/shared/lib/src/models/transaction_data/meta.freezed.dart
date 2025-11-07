// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meta {

 String? get name; String? get type; String? get truck; String? get driver;@JsonKey(name: 'by_user') int? get byUser;@JsonKey(name: 'trip_name') String? get tripName; dynamic get contariner;@JsonKey(name: 'max_credit') int? get maxCredit; String? get description;@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'after_balance') int? get afterBalance;@JsonKey(name: 'before_balance') int? get beforeBalance;@JsonKey(name: 'return_container') String? get returnContainer;@JsonKey(name: 'masarak_commission') int? get masarakCommission;@JsonKey(name: 'second_return_container') String? get secondReturnContainer;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.byUser, byUser) || other.byUser == byUser)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&const DeepCollectionEquality().equals(other.contariner, contariner)&&(identical(other.maxCredit, maxCredit) || other.maxCredit == maxCredit)&&(identical(other.description, description) || other.description == description)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.afterBalance, afterBalance) || other.afterBalance == afterBalance)&&(identical(other.beforeBalance, beforeBalance) || other.beforeBalance == beforeBalance)&&(identical(other.returnContainer, returnContainer) || other.returnContainer == returnContainer)&&(identical(other.masarakCommission, masarakCommission) || other.masarakCommission == masarakCommission)&&(identical(other.secondReturnContainer, secondReturnContainer) || other.secondReturnContainer == secondReturnContainer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,truck,driver,byUser,tripName,const DeepCollectionEquality().hash(contariner),maxCredit,description,productType,afterBalance,beforeBalance,returnContainer,masarakCommission,secondReturnContainer);

@override
String toString() {
  return 'Meta(name: $name, type: $type, truck: $truck, driver: $driver, byUser: $byUser, tripName: $tripName, contariner: $contariner, maxCredit: $maxCredit, description: $description, productType: $productType, afterBalance: $afterBalance, beforeBalance: $beforeBalance, returnContainer: $returnContainer, masarakCommission: $masarakCommission, secondReturnContainer: $secondReturnContainer)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
 String? name, String? type, String? truck, String? driver,@JsonKey(name: 'by_user') int? byUser,@JsonKey(name: 'trip_name') String? tripName, dynamic contariner,@JsonKey(name: 'max_credit') int? maxCredit, String? description,@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'after_balance') int? afterBalance,@JsonKey(name: 'before_balance') int? beforeBalance,@JsonKey(name: 'return_container') String? returnContainer,@JsonKey(name: 'masarak_commission') int? masarakCommission,@JsonKey(name: 'second_return_container') String? secondReturnContainer
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? type = freezed,Object? truck = freezed,Object? driver = freezed,Object? byUser = freezed,Object? tripName = freezed,Object? contariner = freezed,Object? maxCredit = freezed,Object? description = freezed,Object? productType = freezed,Object? afterBalance = freezed,Object? beforeBalance = freezed,Object? returnContainer = freezed,Object? masarakCommission = freezed,Object? secondReturnContainer = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,byUser: freezed == byUser ? _self.byUser : byUser // ignore: cast_nullable_to_non_nullable
as int?,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,contariner: freezed == contariner ? _self.contariner : contariner // ignore: cast_nullable_to_non_nullable
as dynamic,maxCredit: freezed == maxCredit ? _self.maxCredit : maxCredit // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,afterBalance: freezed == afterBalance ? _self.afterBalance : afterBalance // ignore: cast_nullable_to_non_nullable
as int?,beforeBalance: freezed == beforeBalance ? _self.beforeBalance : beforeBalance // ignore: cast_nullable_to_non_nullable
as int?,returnContainer: freezed == returnContainer ? _self.returnContainer : returnContainer // ignore: cast_nullable_to_non_nullable
as String?,masarakCommission: freezed == masarakCommission ? _self.masarakCommission : masarakCommission // ignore: cast_nullable_to_non_nullable
as int?,secondReturnContainer: freezed == secondReturnContainer ? _self.secondReturnContainer : secondReturnContainer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meta].
extension MetaPatterns on Meta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meta value)  $default,){
final _that = this;
switch (_that) {
case _Meta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meta value)?  $default,){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? type,  String? truck,  String? driver, @JsonKey(name: 'by_user')  int? byUser, @JsonKey(name: 'trip_name')  String? tripName,  dynamic contariner, @JsonKey(name: 'max_credit')  int? maxCredit,  String? description, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'after_balance')  int? afterBalance, @JsonKey(name: 'before_balance')  int? beforeBalance, @JsonKey(name: 'return_container')  String? returnContainer, @JsonKey(name: 'masarak_commission')  int? masarakCommission, @JsonKey(name: 'second_return_container')  String? secondReturnContainer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.name,_that.type,_that.truck,_that.driver,_that.byUser,_that.tripName,_that.contariner,_that.maxCredit,_that.description,_that.productType,_that.afterBalance,_that.beforeBalance,_that.returnContainer,_that.masarakCommission,_that.secondReturnContainer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? type,  String? truck,  String? driver, @JsonKey(name: 'by_user')  int? byUser, @JsonKey(name: 'trip_name')  String? tripName,  dynamic contariner, @JsonKey(name: 'max_credit')  int? maxCredit,  String? description, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'after_balance')  int? afterBalance, @JsonKey(name: 'before_balance')  int? beforeBalance, @JsonKey(name: 'return_container')  String? returnContainer, @JsonKey(name: 'masarak_commission')  int? masarakCommission, @JsonKey(name: 'second_return_container')  String? secondReturnContainer)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.name,_that.type,_that.truck,_that.driver,_that.byUser,_that.tripName,_that.contariner,_that.maxCredit,_that.description,_that.productType,_that.afterBalance,_that.beforeBalance,_that.returnContainer,_that.masarakCommission,_that.secondReturnContainer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? type,  String? truck,  String? driver, @JsonKey(name: 'by_user')  int? byUser, @JsonKey(name: 'trip_name')  String? tripName,  dynamic contariner, @JsonKey(name: 'max_credit')  int? maxCredit,  String? description, @JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'after_balance')  int? afterBalance, @JsonKey(name: 'before_balance')  int? beforeBalance, @JsonKey(name: 'return_container')  String? returnContainer, @JsonKey(name: 'masarak_commission')  int? masarakCommission, @JsonKey(name: 'second_return_container')  String? secondReturnContainer)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.name,_that.type,_that.truck,_that.driver,_that.byUser,_that.tripName,_that.contariner,_that.maxCredit,_that.description,_that.productType,_that.afterBalance,_that.beforeBalance,_that.returnContainer,_that.masarakCommission,_that.secondReturnContainer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
   _Meta({this.name, this.type, this.truck, this.driver, @JsonKey(name: 'by_user') this.byUser, @JsonKey(name: 'trip_name') this.tripName, this.contariner, @JsonKey(name: 'max_credit') this.maxCredit, this.description, @JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'after_balance') this.afterBalance, @JsonKey(name: 'before_balance') this.beforeBalance, @JsonKey(name: 'return_container') this.returnContainer, @JsonKey(name: 'masarak_commission') this.masarakCommission, @JsonKey(name: 'second_return_container') this.secondReturnContainer});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override final  String? name;
@override final  String? type;
@override final  String? truck;
@override final  String? driver;
@override@JsonKey(name: 'by_user') final  int? byUser;
@override@JsonKey(name: 'trip_name') final  String? tripName;
@override final  dynamic contariner;
@override@JsonKey(name: 'max_credit') final  int? maxCredit;
@override final  String? description;
@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'after_balance') final  int? afterBalance;
@override@JsonKey(name: 'before_balance') final  int? beforeBalance;
@override@JsonKey(name: 'return_container') final  String? returnContainer;
@override@JsonKey(name: 'masarak_commission') final  int? masarakCommission;
@override@JsonKey(name: 'second_return_container') final  String? secondReturnContainer;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.truck, truck) || other.truck == truck)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.byUser, byUser) || other.byUser == byUser)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&const DeepCollectionEquality().equals(other.contariner, contariner)&&(identical(other.maxCredit, maxCredit) || other.maxCredit == maxCredit)&&(identical(other.description, description) || other.description == description)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.afterBalance, afterBalance) || other.afterBalance == afterBalance)&&(identical(other.beforeBalance, beforeBalance) || other.beforeBalance == beforeBalance)&&(identical(other.returnContainer, returnContainer) || other.returnContainer == returnContainer)&&(identical(other.masarakCommission, masarakCommission) || other.masarakCommission == masarakCommission)&&(identical(other.secondReturnContainer, secondReturnContainer) || other.secondReturnContainer == secondReturnContainer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,truck,driver,byUser,tripName,const DeepCollectionEquality().hash(contariner),maxCredit,description,productType,afterBalance,beforeBalance,returnContainer,masarakCommission,secondReturnContainer);

@override
String toString() {
  return 'Meta(name: $name, type: $type, truck: $truck, driver: $driver, byUser: $byUser, tripName: $tripName, contariner: $contariner, maxCredit: $maxCredit, description: $description, productType: $productType, afterBalance: $afterBalance, beforeBalance: $beforeBalance, returnContainer: $returnContainer, masarakCommission: $masarakCommission, secondReturnContainer: $secondReturnContainer)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? type, String? truck, String? driver,@JsonKey(name: 'by_user') int? byUser,@JsonKey(name: 'trip_name') String? tripName, dynamic contariner,@JsonKey(name: 'max_credit') int? maxCredit, String? description,@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'after_balance') int? afterBalance,@JsonKey(name: 'before_balance') int? beforeBalance,@JsonKey(name: 'return_container') String? returnContainer,@JsonKey(name: 'masarak_commission') int? masarakCommission,@JsonKey(name: 'second_return_container') String? secondReturnContainer
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? type = freezed,Object? truck = freezed,Object? driver = freezed,Object? byUser = freezed,Object? tripName = freezed,Object? contariner = freezed,Object? maxCredit = freezed,Object? description = freezed,Object? productType = freezed,Object? afterBalance = freezed,Object? beforeBalance = freezed,Object? returnContainer = freezed,Object? masarakCommission = freezed,Object? secondReturnContainer = freezed,}) {
  return _then(_Meta(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,truck: freezed == truck ? _self.truck : truck // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as String?,byUser: freezed == byUser ? _self.byUser : byUser // ignore: cast_nullable_to_non_nullable
as int?,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,contariner: freezed == contariner ? _self.contariner : contariner // ignore: cast_nullable_to_non_nullable
as dynamic,maxCredit: freezed == maxCredit ? _self.maxCredit : maxCredit // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,afterBalance: freezed == afterBalance ? _self.afterBalance : afterBalance // ignore: cast_nullable_to_non_nullable
as int?,beforeBalance: freezed == beforeBalance ? _self.beforeBalance : beforeBalance // ignore: cast_nullable_to_non_nullable
as int?,returnContainer: freezed == returnContainer ? _self.returnContainer : returnContainer // ignore: cast_nullable_to_non_nullable
as String?,masarakCommission: freezed == masarakCommission ? _self.masarakCommission : masarakCommission // ignore: cast_nullable_to_non_nullable
as int?,secondReturnContainer: freezed == secondReturnContainer ? _self.secondReturnContainer : secondReturnContainer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
