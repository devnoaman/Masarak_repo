// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:driver/router/router.dart';

import 'package:driver/src/features/map_view/Presentation/map_view.dart';

/// A class that encapsulates the route definition for the [MapView].
class MapViewRoute implements AppRoute {
  MapViewRoute._();

  //instance of this route class
  static final MapViewRoute instance = MapViewRoute._();

  /// The name for this route: 'Map screen'
  @override
  String get name => 'Map screen';

  /// The path for this route: '/map-screen'
  @override
  String get path => '/map-screen';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => MapView(key: state.pageKey),
  );
}
