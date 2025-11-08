// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: RouteNameBuilder
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transporter/router/router.dart';

import 'package:transporter/src/features/returns/presentation/edit_printing_agent.dart';

/// A class that encapsulates the route definition for the [EditPrintingAgent].
class EditPrintingAgentRoute implements AppRoute {
  EditPrintingAgentRoute._();

  //instance of this route class
  static final EditPrintingAgentRoute instance = EditPrintingAgentRoute._();

  /// The name for this route: 'Edit printing agent'
  @override
  String get name => 'Edit printing agent';

  /// The path for this route: '/edit-printing-agent'
  @override
  String get path => '/edit-printing-agent';

  /// The full `GoRoute` object for this route.
  @override
  GoRoute get route => GoRoute(
    path: path,
    name: name,
    builder: (context, state) => EditPrintingAgent(key: state.pageKey),
  );
}
