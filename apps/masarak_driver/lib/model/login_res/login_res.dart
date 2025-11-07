// import 'package:json_annotation/json_annotation.dart';
// import 'package:masarak_driver/model/user_info/role.dart';
// import 'package:shared/shared.dart' hide LoginRes, LoginResParser;
// part 'login_res.g.dart';

// @JsonSerializable()
// class LoginRes {
//   String? token;
//   // List<Role>? roles;
//   UserModel? user;

//   LoginRes({this.token, this.user});

//   factory LoginRes.fromJson(Map<String, dynamic> json) {
//     return _$LoginResFromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$LoginResToJson(this);

//   LoginRes copyWith({String? token, UserModel? user}) {
//     return LoginRes(token: token ?? this.token, user: user ?? this.user);
//   }
// }

// extension LoginResParser on Map {
//   LoginRes get toResModel => LoginRes.fromJson(this as Map<String, dynamic>);
// }
