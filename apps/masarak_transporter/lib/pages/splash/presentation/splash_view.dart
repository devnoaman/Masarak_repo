import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak_transporter/extentions.dart';
import 'package:masarak_transporter/pages/auth/presentation/login_page.dart';
import 'package:masarak_transporter/pages/home/home_page.dart';
import 'package:masarak_transporter/services/storage/email_password_storage.dart';

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
              'assets/svg/masark.svg',
              width: context.width * .4,
              color: context.theme.primaryColor,
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
    var info = await AuthInfo.getAll();
    if (context.mounted) {
      if (info != null) {
        //we have user
        context.go(HomePage.route);
      } else {
        // we dont have a user
        context.go(LoginPage.route);
      }
    }
  }
}
