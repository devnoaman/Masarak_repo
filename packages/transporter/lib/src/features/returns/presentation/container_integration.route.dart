// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/returns/presentation/container_integration.dart';

/// A class that encapsulates the route definition for the [ContainerIntegration].
class ContainerIntegrationRoute implements AppRoute {
  ContainerIntegrationRoute._();

  //instance of this route class
  static final ContainerIntegrationRoute instance =
      ContainerIntegrationRoute._();

  /// The name for this route: 'Container Integration'
  @override
  String get name => 'Container Integration';

  /// The path for this route: '/container-integration'
  @override
  String get path => '/container-integration';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => ContainerIntegration(key: state.pageKey),
  );
}
