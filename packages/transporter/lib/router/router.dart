import 'package:go_router/go_router.dart';

/// An abstract class that defines the contract for all route definitions.
///
/// Any generated route class will implement this, ensuring it provides
/// a path, a name, and a GoRoute object.
abstract class AppRoute {
  /// The path of the route (e.g., '/home').
  String get path;

  /// The name of the route (e.g., 'Home Page').
  String get name;

  /// The configured GoRoute object for navigation.
  GoRoute get route;
}
