import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:masarak_transporter/app/router/router_screens.dart';
import 'package:masarak_transporter/pages/home/home_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: screens,
    debugLogDiagnostics: true,
    // initialLocation: SplashView.route,
    initialLocation: HomePage.route,
  );
});
