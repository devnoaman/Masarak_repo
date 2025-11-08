import 'package:driver/driver.dart';
import 'package:go_router/go_router.dart';
import 'package:masarak_driver/pages/auth/presentation/forgot_password.dart';
import 'package:masarak_driver/pages/checks/presentation/checks_view.dart';
import 'package:masarak_driver/pages/confirm_crossing/presentation/confirm_crossing_page.dart';
import 'package:masarak_driver/pages/home/home_page.dart';
import 'package:masarak_driver/pages/notifications/presentation/notifications_view.dart';
import 'package:masarak_driver/pages/splash/presentation/splash_view.dart';

import 'package:masarak_driver/scaffolding_app.dart';
import 'package:masarak_driver/pages/auth/presentation/login_page.dart';
import 'package:sub_app_core/navigation/sub_app_router_config.dart';
import 'package:transporter/router/router_config.dart';

List<SubAppRouterConfig> _subAppRouterConfigs = [
  TransporterAppRouter(),
  DriverAppRoute(),
];

final screens = [
  ShellRoute(
    routes: scaffoldRoutes,
    builder: (context, state, child) => ScaffoldingApp(
      child: child,
      routePaths: scaffoldRoutes.map((e) => e.path).toList(),
    ),
  ),
  GoRoute(path: LoginPage.route, builder: (context, state) => LoginPage()),
  GoRoute(
    path: ForgotPassword.route,
    builder: (context, state) => ForgotPassword(),
  ),
  GoRoute(
    path: ConfirmCrossingPage.route,
    builder: (context, state) => ConfirmCrossingPage(),
  ),
  GoRoute(path: SplashView.route, builder: (context, state) => SplashView()),
  GoRoute(
    path: NotificationsView.route,
    builder: (context, state) => NotificationsView(),
  ),
  ..._subAppRouterConfigs.expand((config) => config.getRoutes()),
];

var scaffoldRoutes = [
  // GoRoute(path: HomePage.route, builder: (context, state) => HomePage()),
  GoRoute(path: ChecksView.route, builder: (context, state) => ChecksView()),
];
