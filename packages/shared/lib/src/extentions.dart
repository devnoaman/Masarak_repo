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

extension DateFormation on DateTime {
  String get toStringDate => DateFormat('yyyy-MM-dd').format(this);
  String get ddMMyyyyDate => DateFormat('dd-MM-yyyy').format(this);
  String get ymdDate => DateFormat('yyyy-MM-dd').format(this);
  String get hms => DateFormat('hh:mm a').format(this);
  String get lmd => DateFormat.jms('en').format(this);
}

extension PriceFormatter on num {
  String get toFormatedPrice {
    if (this is double) {
      return NumberFormat('###,###,###', 'ar-IQ').format(this);
    }
    return NumberFormat('###,###,###', 'ar-IQ').format(this);
  }

  String toIqdPrice({String? symbol, int? decimalDigits}) =>
      NumberFormat.currency(
        locale: 'ar_IQ',
        decimalDigits: decimalDigits,
        symbol: (symbol == null || symbol == 'ar') ? 'د.ع' : 'IQD',

        // symbol==null ? :symbol=='ar'
      ).format(this);
  // String get ddMMyyyyDate => DateFormat('dd-MM-yyyy').format(this);
}

extension PriceFormation on double {
  String get toStringPrice => NumberFormat('###,###').format(this);
}

extension TextDirectionality on BuildContext {
  bool isRTL() {
    final currentDirection = Directionality.of(this);
    final rtl = currentDirection == TextDirection.rtl;
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
  BorderRadiusGeometry get cRadius => BorderRadius.circular(toDouble());
}

extension SymetricalPadding on double {
  EdgeInsetsGeometry get symetric => EdgeInsets.symmetric(
    horizontal: truncate().toDouble(),
    vertical: double.parse(toString().split('.')[1]),
  );
}

extension Paddinator on num {
  EdgeInsetsGeometry get allPadding => EdgeInsets.all(toDouble());
  EdgeInsetsGeometry get leftPadding => EdgeInsets.only(left: toDouble());
  EdgeInsetsGeometry get rightPadding => EdgeInsets.only(right: toDouble());
  EdgeInsetsGeometry get topPadding => EdgeInsets.only(top: toDouble());
  EdgeInsetsGeometry get bottomPadding => EdgeInsets.only(bottom: toDouble());
  EdgeInsetsGeometry get hPadding =>
      EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsetsGeometry get vPadding => EdgeInsets.symmetric(vertical: toDouble());
}

extension ColorHelper on Color {
  /// Make color lighter by so many [percents]
  Color lighter(int percents) {
    assert(percents >= 1 && percents <= 100);
    final int rgbPercent = (percents / 100 * 255).round();
    int red = this.red + rgbPercent,
        green = this.green + rgbPercent,
        blue = this.blue + rgbPercent;
    if (red > 255) {
      red = 255;
    }
    if (green > 255) {
      green = 255;
    }
    if (blue > 255) {
      blue = 255;
    }
    return Color.fromARGB(alpha, red, green, blue);
  }

  /// Make color darker by so many [percents]
  Color darker(int percents) {
    assert(percents >= 1 && percents <= 100);
    final int rgbPercent = (percents / 100 * 255).round();
    int red = this.red - rgbPercent,
        green = this.green - rgbPercent,
        blue = this.blue - rgbPercent;
    if (red < 0) {
      red = 0;
    }
    if (green < 0) {
      green = 0;
    }
    if (blue < 0) {
      blue = 0;
    }
    return Color.fromARGB(alpha, red, green, blue);
  }

  /// Linearly interpolate between two colors.
  ///
  /// This is intended to be fast but as a result may be ugly. Consider
  /// HSVColor or writing custom logic for interpolating colors.
  ///
  /// If either color is null, this function linearly interpolates from a
  /// transparent instance of the other color. This is usually preferable to
  /// interpolating from [material.Colors.transparent] (`const
  /// Color(0x00000000)`), which is specifically transparent _black_.
  ///
  /// The `t` argument represents position on the timeline, with 0.0 meaning
  /// that the interpolation has not started, returning `a` (or something
  /// equivalent to `a`), 1.0 meaning that the interpolation has finished,
  /// returning `b` (or something equivalent to `b`), and values in between
  /// meaning that the interpolation is at the relevant point on the timeline
  /// between `a` and `b`. The interpolation can be extrapolated beyond 0.0 and
  /// 1.0, so negative values and values greater than 1.0 are valid (and can
  /// easily be generated by curves such as Curves.elasticInOut). Each channel
  /// will be clamped to the range 0 to 255.
  ///
  /// Values for `t` are usually obtained from an [Animation<double>], such as
  /// an AnimationController.
  Color? mix(Color another, double amount) => Color.lerp(this, another, amount);

  /// Convert color to hex string
  String get asHexString => '#${value.toRadixString(16).toUpperCase()}';
}
