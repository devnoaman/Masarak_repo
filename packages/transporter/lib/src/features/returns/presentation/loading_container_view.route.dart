// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/returns/presentation/loading_container_view.dart';

/// A class that encapsulates the route definition for the [LoadingContainerView].
class LoadingContainerViewRoute implements AppRoute {
  LoadingContainerViewRoute._();

  //instance of this route class
  static final LoadingContainerViewRoute instance =
      LoadingContainerViewRoute._();

  /// The name for this route: 'Loading container view'
  @override
  String get name => 'Loading container view';

  /// The path for this route: '/loading-container'
  @override
  String get path => '/loading-container';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => LoadingContainerView(key: state.pageKey),
  );
}
