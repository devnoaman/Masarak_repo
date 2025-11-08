// Place fonts/iconsfont.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: iconsfont
//      fonts:
//       - asset: fonts/iconsfont.ttf
import 'package:flutter/widgets.dart';

@staticIconProvider
class IconsFont {
  IconsFont._();

  static const String _fontFamily = 'IconFontFamily';
  static const String _fontPackage = 'icons_font';

  static const IconData truckFilled = IconData(
    0xe90c,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData calender = IconData(
    0xe900,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData cardRecive = IconData(
    0xe901,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData cardSend = IconData(
    0xe902,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData edit = IconData(
    0xe903,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData home = IconData(
    0xe904,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData homeFilled = IconData(
    0xe905,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData routing = IconData(
    0xe906,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData statics = IconData(
    0xe907,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData tripFilled = IconData(
    0xe908,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData truck = IconData(
    0xe909,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData walletMoney = IconData(
    0xe90a,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
  static const IconData walletMoneyFilled = IconData(
    0xe90b,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
}
