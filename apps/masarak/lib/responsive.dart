import 'package:flutter/material.dart';

class Responsive {
  static double mobileThreshold = 650;
  static double desktopThreshold = 1100;
  static double tabletThreshold = 850;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
