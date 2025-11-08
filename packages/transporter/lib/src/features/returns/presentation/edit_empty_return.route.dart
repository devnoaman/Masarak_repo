// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/returns/presentation/edit_empty_return.dart';

/// A class that encapsulates the route definition for the [EditEmptyReturn].
class EditEmptyReturnRoute implements AppRoute {
  EditEmptyReturnRoute._();

  //instance of this route class
  static final EditEmptyReturnRoute instance = EditEmptyReturnRoute._();

  /// The name for this route: 'Edit empty return'
  @override
  String get name => 'Edit empty return';

  /// The path for this route: '/edit-empty-return'
  @override
  String get path => '/edit-empty-return';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => EditEmptyReturn(key: state.pageKey),
  );
}
