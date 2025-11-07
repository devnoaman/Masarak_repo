// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:driver/router/router.dart';

import 'package:driver/src/features/home_view/presentation/home_view.dart';

/// A class that encapsulates the route definition for the [HomeView].
class HomeViewRoute implements AppRoute {
  HomeViewRoute._();

  //instance of this route class
  static final HomeViewRoute instance = HomeViewRoute._();

  /// The name for this route: 'Home screen driver'
  @override
  String get name => 'Home screen driver';

  /// The path for this route: '/home-driver-app'
  @override
  String get path => '/home-driver-app';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => HomeView(key: state.pageKey),
  );
}
