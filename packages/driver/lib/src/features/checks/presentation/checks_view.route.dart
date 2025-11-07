// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:driver/router/router.dart';

import 'package:driver/src/features/checks/presentation/checks_view.dart';

/// A class that encapsulates the route definition for the [ChecksView].
class ChecksViewRoute implements AppRoute {
  ChecksViewRoute._();

  //instance of this route class
  static final ChecksViewRoute instance = ChecksViewRoute._();

  /// The name for this route: 'Checks screen driver'
  @override
  String get name => 'Checks screen driver';

  /// The path for this route: '/cheks-view-driver-app'
  @override
  String get path => '/cheks-view-driver-app';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => ChecksView(key: state.pageKey),
  );
}
