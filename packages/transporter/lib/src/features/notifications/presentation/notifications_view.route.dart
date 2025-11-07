// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/notifications/presentation/notifications_view.dart';

/// A class that encapsulates the route definition for the [NotificationsView].
class NotificationsViewRoute implements AppRoute {
  NotificationsViewRoute._();

  //instance of this route class
  static final NotificationsViewRoute instance = NotificationsViewRoute._();

  /// The name for this route: 'Transporter notification page'
  @override
  String get name => 'Transporter notification page';

  /// The path for this route: '/notifications-transporter'
  @override
  String get path => '/notifications-transporter';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => NotificationsView(key: state.pageKey),
  );
}
