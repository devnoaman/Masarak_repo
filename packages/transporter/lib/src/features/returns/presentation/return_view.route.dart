// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/returns/presentation/return_view.dart';

/// A class that encapsulates the route definition for the [ReturnView].
class ReturnViewRoute implements AppRoute {
  ReturnViewRoute._();

  //instance of this route class
  static final ReturnViewRoute instance = ReturnViewRoute._();

  /// The name for this route: 'Transporter return page'
  @override
  String get name => 'Transporter return page';

  /// The path for this route: '/return-transporter'
  @override
  String get path => '/return-transporter';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => ReturnView(key: state.pageKey),
  );
}
