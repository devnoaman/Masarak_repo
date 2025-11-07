import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:masarak_driver/app/router/router_screens.dart';
// import 'package:masarak_driver/pages/home/home_page.dart';
import 'package:masarak_driver/pages/splash/presentation/splash_view.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: screens,
    debugLogDiagnostics: true,
    initialLocation: SplashView.route,
    // initialLocation: '/home-transporter',
  );
});
