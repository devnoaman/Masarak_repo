// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:masarak/app/router/router.dart';
// import 'package:masarak/scaffolding_app.dart';
// import 'package:masarak/network/api/client.dart';
// import 'package:masarak/network/api/endpoints.dart';
// import 'package:masarak/services/storage/email_password_storage.dart';
// import 'package:top_snackbar_flutter/custom_snack_bar.dart';
// import 'package:top_snackbar_flutter/top_snack_bar.dart';

// final loginProvider = StateNotifierProvider<LoginNotifier, bool>((ref) {
//   return LoginNotifier(ref);
// });

// class LoginNotifier extends StateNotifier<bool> {
//   final Ref ref;
//   LoginNotifier(
//     this.ref,
//   ) : super(
//           false,
//         );
//   login(
//     String userName,
//     String password,
//     BuildContext context,
//     // String apiKey,
//     // String secret,
//   ) {
//     state = true;
//     ref.read(dioProvider).post(
//       Endpoints.login,
//       options: Options(
//         headers: {
//           "Authorization": "token b82d9021d1e565a:29112632859cf5f",
//         },
//       ),
//       data: {
//         "usr": userName,
//         "pwd": password,
//         // "usr": "azamil@transforat.com",
//         // "pwd": "adnanzamil",
//       },
//     ).then((res) {
//       log(
//         res.data.toString(),
//       );
//       if (res.statusCode == 200) {
//         AuthInfo.setAll(userName, password);
//       }
//       ref.read(routerProvider).go(ScaffoldingApp.route);
//     }).catchError((e) {
//       log(
//         e.toString(),
//       );
//       showTopSnackBar(
//         Overlay.of(context),
//         CustomSnackBar.error(
//           message: "حدث خطأ ، يرجى التحقق من المعلومات واعادة المحاولة",
//         ),
//       );
//     }).whenComplete(() {
//       state = false;
//     });
//   }
// }
