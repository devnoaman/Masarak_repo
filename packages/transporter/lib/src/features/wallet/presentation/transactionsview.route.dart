// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/wallet/presentation/transactionsview.dart';

/// A class that encapsulates the route definition for the [Transactionsview].
class TransactionsviewRoute implements AppRoute {
  TransactionsviewRoute._();

  //instance of this route class
  static final TransactionsviewRoute instance = TransactionsviewRoute._();

  /// The name for this route: 'Transactions View'
  @override
  String get name => 'Transactions View';

  /// The path for this route: '/transactions-view'
  @override
  String get path => '/transactions-view';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => Transactionsview(key: state.pageKey),
  );
}
