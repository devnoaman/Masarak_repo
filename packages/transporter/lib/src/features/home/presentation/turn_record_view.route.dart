// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/home/presentation/turn_record_view.dart';

/// A class that encapsulates the route definition for the [TurnRecordView].
class TurnRecordViewRoute implements AppRoute {
  TurnRecordViewRoute._();

  //instance of this route class
  static final TurnRecordViewRoute instance = TurnRecordViewRoute._();

  /// The name for this route: 'Turn Record View'
  @override
  String get name => 'Turn Record View';

  /// The path for this route: '/turn-record-view'
  @override
  String get path => '/turn-record-view';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => TurnRecordView(key: state.pageKey),
  );
}
