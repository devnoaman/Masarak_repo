// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/home/presentation/home_view.dart';

/// A class that encapsulates the route definition for the [HomeView].
class HomeViewRoute implements AppRoute {
  HomeViewRoute._();

  //instance of this route class
  static final HomeViewRoute instance = HomeViewRoute._();

  /// The name for this route: 'Transporter home page'
  @override
  String get name => 'Transporter home page';

  /// The path for this route: '/home-transporter'
  @override
  String get path => '/home-transporter';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => HomeView(key: state.pageKey),
  );
}
