// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/works/presentation/works_view.dart';

/// A class that encapsulates the route definition for the [WorksView].
class WorksViewRoute implements AppRoute {
  WorksViewRoute._();

  //instance of this route class
  static final WorksViewRoute instance = WorksViewRoute._();

  /// The name for this route: 'Transporter works page'
  @override
  String get name => 'Transporter works page';

  /// The path for this route: '/works-transporter'
  @override
  String get path => '/works-transporter';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => WorksView(key: state.pageKey),
  );
}
