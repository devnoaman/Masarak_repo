// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:transporter/router/router.dart';

//import all the required paths
import 'package:transporter/src/features/home/home_view.route.dart';
import 'package:transporter/src/features/works/presentation/works_view.route.dart';
import 'package:transporter/src/features/wallet/presentation/wallet_view.route.dart';
import 'package:transporter/src/features/returns/presentation/return_view.route.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
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

///Static instance of[HomeViewRoute]
   static final homeViewInstance  =  HomeViewRoute.instance;
///Static instance of[WorksViewRoute]
   static final worksViewInstance  =  WorksViewRoute.instance;
///Static instance of[WalletViewRoute]
   static final walletViewInstance  =  WalletViewRoute.instance;
///Static instance of[ReturnViewRoute]
   static final returnViewInstance  =  ReturnViewRoute.instance;
///Static instance of[NotificationsViewRoute]
   static final notificationsViewInstance  =  NotificationsViewRoute.instance;
/// List containing all route instances.
  static final all = <AppRoute>[
    HomeViewRoute.instance,
    WorksViewRoute.instance,
    WalletViewRoute.instance,
    ReturnViewRoute.instance,
    NotificationsViewRoute.instance,
  ];
}
