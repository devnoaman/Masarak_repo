// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:driver/router/router.dart';

//import all the required paths
import 'package:driver/src/features/checks/presentation/checks_view.route.dart';
import 'package:driver/src/features/home_view/presentation/home_view.route.dart';
import 'package:driver/src/features/map_view/Presentation/map_view.route.dart';
import 'package:driver/src/features/notifications/presentation/notifications_view.route.dart';

/// The [Routes] class provides static access to all route instances used in the application.
///
/// This class is auto-generated and should not be modified by hand. It imports all the required
/// route files and exposes each route as a static final instance for easy access throughout the app.
///
/// - Each route (e.g., `HomeViewRoute`, `WorksViewRoute`) is imported and exposed as a static field.
/// - The `all` list contains all route instances, which can be used for route registration or iteration.
///
/// Example usage:
/// ```dart
/// final homeRoute = Routes.homeViewInstance;
/// final allRoutes = Routes.all;
/// ```

class Routes {
  Routes._();

  ///Static instance of[ChecksViewRoute]
  static final checksViewInstance = ChecksViewRoute.instance;

  ///Static instance of[HomeViewRoute]
  static final homeViewInstance = HomeViewRoute.instance;

  ///Static instance of[MapViewRoute]
  static final mapViewInstance = MapViewRoute.instance;

  ///Static instance of[NotificationsViewRoute]
  static final notificationsViewInstance = NotificationsViewRoute.instance;

  /// List containing all route instances.
  static final all = <AppRoute>[
    ChecksViewRoute.instance,
    HomeViewRoute.instance,
    MapViewRoute.instance,
    NotificationsViewRoute.instance,
  ];
}
