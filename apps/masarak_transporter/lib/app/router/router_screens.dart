import 'package:go_router/go_router.dart';
import 'package:masarak_transporter/pages/confirm_crossing/presentation/confirm_crossing_page.dart';
import 'package:masarak_transporter/pages/home/home_page.dart';
import 'package:masarak_transporter/pages/splash/presentation/splash_view.dart';
import 'package:masarak_transporter/pages/wallet/presentation/wallet_page.dart';
import 'package:masarak_transporter/pages/works/presentation/works_page.dart';
import 'package:masarak_transporter/scaffolding_app.dart';
import 'package:masarak_transporter/pages/auth/presentation/login_page.dart';

final screens = [
  ShellRoute(
    routes: [
      GoRoute(path: HomePage.route, builder: (context, state) => HomePage()),
      GoRoute(path: WorksPage.route, builder: (context, state) => WorksPage()),
      GoRoute(
        path: WalletPage.route,
        builder: (context, state) => WalletPage(),
      ),
    ],
    builder: (context, state, child) => ScaffoldingApp(child: child),
  ),
  GoRoute(path: LoginPage.route, builder: (context, state) => LoginPage()),
  GoRoute(
    path: ConfirmCrossingPage.route,
    builder: (context, state) => ConfirmCrossingPage(),
  ),
  GoRoute(path: SplashView.route, builder: (context, state) => SplashView()),
];
