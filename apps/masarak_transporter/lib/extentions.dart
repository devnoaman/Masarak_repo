library;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;

extension SizingFromContext on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get size => MediaQuery.of(this).size;
}

extension ThemeHelper on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension TextDirectionality on BuildContext {
  bool isRTL() {
    var currentDirection = Directionality.of(this);
    final bool rtl = currentDirection == TextDirection.rtl;
    return rtl;
  }
}

extension SpacingHelper on num {
  Widget get hGap => SizedBox(height: double.tryParse(toString()));
  Widget get wGap => SizedBox(width: double.tryParse(toString()));
}

extension NumDurationExtensions on num {
  Duration get microseconds => Duration(microseconds: round());
  Duration get ms => (this * 1000).microseconds;
  Duration get milliseconds => (this * 1000).microseconds;
  Duration get seconds => (this * 1000 * 1000).microseconds;
  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;
  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;
  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;
}

extension BorderExtension on num {
  BorderRadius get cRadius => BorderRadius.circular(toDouble());
}

extension SymetricalPadding on double {
  EdgeInsets get symetric => EdgeInsets.symmetric(
    horizontal: truncate().toDouble(),
    vertical: (double.parse(toString().split('.')[1])),
  );
}

extension PriceFormatter on num {
  String get toFormatedPrice => NumberFormat('###,###,###').format(this);
  // String get ddMMyyyyDate => DateFormat('dd-MM-yyyy').format(this);
}

extension Paddinator on num {
  EdgeInsets get allPadding => EdgeInsets.all(toDouble());
  EdgeInsets get leftPadding => EdgeInsets.only(left: toDouble());
  EdgeInsets get rightPadding => EdgeInsets.only(right: toDouble());
  EdgeInsets get topPadding => EdgeInsets.only(top: toDouble());
  EdgeInsets get bottomPadding => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: toDouble());
}
