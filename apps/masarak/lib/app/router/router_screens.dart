import 'package:go_router/go_router.dart';
import 'package:masarak/pages/checks/presentation/check_pages.dart';
import 'package:masarak/pages/confirm_crossing/presentation/confirm_crossing_page.dart';
import 'package:masarak/pages/empty.dart';
import 'package:masarak/pages/home/home_page.dart';
import 'package:masarak/pages/profile/presentation/profile_page.dart';
import 'package:masarak/pages/splash/presentation/splash_view.dart';
import 'package:masarak/pages/trip/presentation/search_trip.dart';
import 'package:masarak/scaffolding_app.dart';
import 'package:masarak/pages/auth/presentation/login_page.dart';

final screens = [
  ShellRoute(
    routes: [
      GoRoute(
        path: HomePage.route,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: SearchTrip.route,
        builder: (context, state) => SearchTrip(),
      ),
      GoRoute(
        path: CheckPages.route,
        builder: (context, state) => CheckPages(),
      ),
      GoRoute(
        path: EmptyPage.route,
        builder: (context, state) => EmptyPage(),
      ),
    ],
    builder: (context, state, child) => ScaffoldingApp(
      child: child,
    ),
  ),
  GoRoute(
    path: LoginPage.route,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: ConfirmCrossingPage.route,
    builder: (context, state) => ConfirmCrossingPage(),
  ),
  GoRoute(
    path: SplashView.route,
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: ProfilePage.route,
    builder: (context, state) => ProfilePage(),
  ),
];
