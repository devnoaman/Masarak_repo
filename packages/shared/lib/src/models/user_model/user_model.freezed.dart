// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 int? get id; String? get name; String? get mobile;@JsonKey(name: 'email_verified_at') DateTime? get emailVerifiedAt; dynamic get email;@JsonKey(name: 'two_factor_confirmed_at') dynamic get twoFactorConfirmedAt;@JsonKey(name: 'current_team_id') dynamic get currentTeamId;@JsonKey(name: 'profile_photo_path') dynamic get profilePhotoPath;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl; List<Role>? get roles;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.twoFactorConfirmedAt, twoFactorConfirmedAt)&&const DeepCollectionEquality().equals(other.currentTeamId, currentTeamId)&&const DeepCollectionEquality().equals(other.profilePhotoPath, profilePhotoPath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&const DeepCollectionEquality().equals(other.roles, roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobile,emailVerifiedAt,const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(twoFactorConfirmedAt),const DeepCollectionEquality().hash(currentTeamId),const DeepCollectionEquality().hash(profilePhotoPath),createdAt,updatedAt,profilePhotoUrl,const DeepCollectionEquality().hash(roles));

@override
String toString() {
  return 'UserModel(id: $id, name: $name, mobile: $mobile, emailVerifiedAt: $emailVerifiedAt, email: $email, twoFactorConfirmedAt: $twoFactorConfirmedAt, currentTeamId: $currentTeamId, profilePhotoPath: $profilePhotoPath, createdAt: $createdAt, updatedAt: $updatedAt, profilePhotoUrl: $profilePhotoUrl, roles: $roles)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? mobile,@JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt, dynamic email,@JsonKey(name: 'two_factor_confirmed_at') dynamic twoFactorConfirmedAt,@JsonKey(name: 'current_team_id') dynamic currentTeamId,@JsonKey(name: 'profile_photo_path') dynamic profilePhotoPath,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl, List<Role>? roles
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? mobile = freezed,Object? emailVerifiedAt = freezed,Object? email = freezed,Object? twoFactorConfirmedAt = freezed,Object? currentTeamId = freezed,Object? profilePhotoPath = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? profilePhotoUrl = freezed,Object? roles = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,twoFactorConfirmedAt: freezed == twoFactorConfirmedAt ? _self.twoFactorConfirmedAt : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
as dynamic,currentTeamId: freezed == currentTeamId ? _self.currentTeamId : currentTeamId // ignore: cast_nullable_to_non_nullable
as dynamic,profilePhotoPath: freezed == profilePhotoPath ? _self.profilePhotoPath : profilePhotoPath // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,roles: freezed == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<Role>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? mobile, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt,  dynamic email, @JsonKey(name: 'two_factor_confirmed_at')  dynamic twoFactorConfirmedAt, @JsonKey(name: 'current_team_id')  dynamic currentTeamId, @JsonKey(name: 'profile_photo_path')  dynamic profilePhotoPath, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl,  List<Role>? roles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.mobile,_that.emailVerifiedAt,_that.email,_that.twoFactorConfirmedAt,_that.currentTeamId,_that.profilePhotoPath,_that.createdAt,_that.updatedAt,_that.profilePhotoUrl,_that.roles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? mobile, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt,  dynamic email, @JsonKey(name: 'two_factor_confirmed_at')  dynamic twoFactorConfirmedAt, @JsonKey(name: 'current_team_id')  dynamic currentTeamId, @JsonKey(name: 'profile_photo_path')  dynamic profilePhotoPath, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl,  List<Role>? roles)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.name,_that.mobile,_that.emailVerifiedAt,_that.email,_that.twoFactorConfirmedAt,_that.currentTeamId,_that.profilePhotoPath,_that.createdAt,_that.updatedAt,_that.profilePhotoUrl,_that.roles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? mobile, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt,  dynamic email, @JsonKey(name: 'two_factor_confirmed_at')  dynamic twoFactorConfirmedAt, @JsonKey(name: 'current_team_id')  dynamic currentTeamId, @JsonKey(name: 'profile_photo_path')  dynamic profilePhotoPath, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl,  List<Role>? roles)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.mobile,_that.emailVerifiedAt,_that.email,_that.twoFactorConfirmedAt,_that.currentTeamId,_that.profilePhotoPath,_that.createdAt,_that.updatedAt,_that.profilePhotoUrl,_that.roles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
   _UserModel({this.id, this.name, this.mobile, @JsonKey(name: 'email_verified_at') this.emailVerifiedAt, this.email, @JsonKey(name: 'two_factor_confirmed_at') this.twoFactorConfirmedAt, @JsonKey(name: 'current_team_id') this.currentTeamId, @JsonKey(name: 'profile_photo_path') this.profilePhotoPath, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl, final  List<Role>? roles}): _roles = roles;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? mobile;
@override@JsonKey(name: 'email_verified_at') final  DateTime? emailVerifiedAt;
@override final  dynamic email;
@override@JsonKey(name: 'two_factor_confirmed_at') final  dynamic twoFactorConfirmedAt;
@override@JsonKey(name: 'current_team_id') final  dynamic currentTeamId;
@override@JsonKey(name: 'profile_photo_path') final  dynamic profilePhotoPath;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;
 final  List<Role>? _roles;
@override List<Role>? get roles {
  final value = _roles;
  if (value == null) return null;
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.twoFactorConfirmedAt, twoFactorConfirmedAt)&&const DeepCollectionEquality().equals(other.currentTeamId, currentTeamId)&&const DeepCollectionEquality().equals(other.profilePhotoPath, profilePhotoPath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&const DeepCollectionEquality().equals(other._roles, _roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobile,emailVerifiedAt,const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(twoFactorConfirmedAt),const DeepCollectionEquality().hash(currentTeamId),const DeepCollectionEquality().hash(profilePhotoPath),createdAt,updatedAt,profilePhotoUrl,const DeepCollectionEquality().hash(_roles));

@override
String toString() {
  return 'UserModel(id: $id, name: $name, mobile: $mobile, emailVerifiedAt: $emailVerifiedAt, email: $email, twoFactorConfirmedAt: $twoFactorConfirmedAt, currentTeamId: $currentTeamId, profilePhotoPath: $profilePhotoPath, createdAt: $createdAt, updatedAt: $updatedAt, profilePhotoUrl: $profilePhotoUrl, roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? mobile,@JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt, dynamic email,@JsonKey(name: 'two_factor_confirmed_at') dynamic twoFactorConfirmedAt,@JsonKey(name: 'current_team_id') dynamic currentTeamId,@JsonKey(name: 'profile_photo_path') dynamic profilePhotoPath,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl, List<Role>? roles
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? mobile = freezed,Object? emailVerifiedAt = freezed,Object? email = freezed,Object? twoFactorConfirmedAt = freezed,Object? currentTeamId = freezed,Object? profilePhotoPath = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? profilePhotoUrl = freezed,Object? roles = freezed,}) {
  return _then(_UserModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as dynamic,twoFactorConfirmedAt: freezed == twoFactorConfirmedAt ? _self.twoFactorConfirmedAt : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
as dynamic,currentTeamId: freezed == currentTeamId ? _self.currentTeamId : currentTeamId // ignore: cast_nullable_to_non_nullable
as dynamic,profilePhotoPath: freezed == profilePhotoPath ? _self.profilePhotoPath : profilePhotoPath // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,roles: freezed == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<Role>?,
  ));
}


}

// dart format on
