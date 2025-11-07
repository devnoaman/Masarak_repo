// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/wallet/presentation/wallet_view.dart';

/// A class that encapsulates the route definition for the [WalletView].
class WalletViewRoute implements AppRoute {
  WalletViewRoute._();

  //instance of this route class
  static final WalletViewRoute instance = WalletViewRoute._();

  /// The name for this route: 'Transporter wallet page'
  @override
  String get name => 'Transporter wallet page';

  /// The path for this route: '/wallet-transporter'
  @override
  String get path => '/wallet-transporter';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => WalletView(key: state.pageKey),
  );
}
