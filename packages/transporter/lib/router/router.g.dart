// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:transporter/router/router.dart';

//import all the required paths
import 'package:transporter/src/features/home/presentation/home_view.route.dart';
import 'package:transporter/src/features/home/presentation/turn_record_view.route.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
import 'package:transporter/src/features/returns/presentation/return_view.route.dart';
import 'package:transporter/src/features/wallet/presentation/transactionsview.route.dart';
import 'package:transporter/src/features/wallet/presentation/wallet_view.route.dart';
import 'package:transporter/src/features/works/presentation/works_view.route.dart';
import 'package:transporter/src/features/returns/presentation/loading_container_view.route.dart';
import 'package:transporter/src/features/returns/presentation/edit_printing_agent.route.dart';
import 'package:transporter/src/features/returns/presentation/edit_empty_return.route.dart';
import 'package:transporter/src/features/returns/presentation/container_integration.route.dart';

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
  static final homeViewInstance = HomeViewRoute.instance;

  ///Static instance of[TurnRecordViewRoute]
  static final turnRecordViewInstance = TurnRecordViewRoute.instance;

  ///Static instance of[NotificationsViewRoute]
  static final notificationsViewInstance = NotificationsViewRoute.instance;

  ///Static instance of[ReturnViewRoute]
  static final returnViewInstance = ReturnViewRoute.instance;

  ///Static instance of[TransactionsviewRoute]
  static final transactionsviewInstance = TransactionsviewRoute.instance;

  ///Static instance of[WalletViewRoute]
  static final walletViewInstance = WalletViewRoute.instance;

  ///Static instance of[WorksViewRoute]
  static final worksViewInstance = WorksViewRoute.instance;

  ///Static instance of[LoadingContainerViewRoute]
  static final loadingContainerViewInstance =
      LoadingContainerViewRoute.instance;

  ///Static instance of[EditPrintingAgentRoute]
  static final editPrintingAgentInstance = EditPrintingAgentRoute.instance;

  ///Static instance of[EditEmptyReturnRoute]
  static final editEmptyReturnInstance = EditEmptyReturnRoute.instance;

  ///Static instance of[ContainerIntegrationRoute]
  static final containerIntegrationInstance =
      ContainerIntegrationRoute.instance;

  /// List containing all route instances.
  static final all = <AppRoute>[
    HomeViewRoute.instance,
    TurnRecordViewRoute.instance,
    NotificationsViewRoute.instance,
    ReturnViewRoute.instance,
    TransactionsviewRoute.instance,
    WalletViewRoute.instance,
    WorksViewRoute.instance,
    LoadingContainerViewRoute.instance,
    EditPrintingAgentRoute.instance,
    EditEmptyReturnRoute.instance,
    ContainerIntegrationRoute.instance,
  ];
}
