import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared/shared.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:masarak_driver/extentions.dart';
import 'package:masarak_driver/pages/auth/presentation/login_page.dart';

class SplashView extends HookConsumerWidget {
  const SplashView({super.key});
  static const String route = '/splash';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      validateUser(context);
      return null;
    }, []);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(flex: 2),
          Center(
            child: SvgPicture.asset(
              'assets/svg/logo-masarak.svg',
              width: context.width * .4,
              // color: context.theme.primaryColor,
            ),
          ),
          Spacer(),
          SafeArea(child: SpinKitFadingCube(color: context.theme.primaryColor)),
          16.hGap,
        ],
      ),
    );
  }

  Future<void> validateUser(BuildContext context) async {
    await Future.delayed(1000.ms);
    // var info = await AuthInfo.getAll();

    var manager = AuthManager.instance;

    var me = await manager.me();
    var meRes = me?.toResModel;
    var roles = meRes?.user!.roles?.map((e) => e.name).toList();

    if (context.mounted) {
      if (meRes != null && meRes.user!.roles != null && roles!.isNotEmpty) {
        //we have user
        // context.go(HomePage.route);
        if (roles.contains("Transportation Agent")) {
          // push transporter
          context.go('/home-transporter');
        } else if (roles.contains("Driver")) {
          // push driver
          context.go('/home-driver-app');
        } else {
          // show error
          context.go(LoginPage.route);
        }
      } else {
        // we dont have a user
        context.go(LoginPage.route);
      }
    }
  }
}
