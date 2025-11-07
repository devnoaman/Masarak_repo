// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';
import 'package:masarak_driver/services/storage/storage.dart';

class ThemeStorage {
  const ThemeStorage();
  // static ValueChanged<bool?>? isDark;
  static ValueNotifier<bool?> isDark = ValueNotifier<bool>(false);
  static const String themeKey = 'theme';
  static Future<String?> getTheme() async {
    return await storage.read(key: themeKey);
  }

  static Future<void> listen(ValueChanged<ThemeMode?> value) async {
    var mode = await themeMode();
    //send initial theme
    value.call(mode);
    // storage.
    storage.registerListener(
      key: themeKey,
      listener: (v) async {
        var mode = await themeMode();
        value.call(mode);
      },
    );
  }

  static Future<ThemeMode> themeMode() async {
    var theme = await getTheme();
    if (theme != null) isDark.value = theme == 'light' ? false : true;
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static Future<void> setTheme(String? theme) async {
    // if (theme != null) isDark?.call(theme == 'light' ? false : true);
    if (theme != null) isDark.value = theme == 'light' ? false : true;
    return await storage.write(key: themeKey, value: theme);
  }

  static Future<void> toggleTheme(BuildContext context) async {
    var theme = await getTheme();
    switch (theme) {
      case 'light':
        await setTheme('dark');

        break;
      case 'dark':
        await setTheme('light');
        break;
      default:
        var brightness = MediaQuery.of(context).platformBrightness;
        switch (brightness) {
          case Brightness.dark:
            await setTheme('light');
            break;
          case Brightness.light:
            await setTheme('dark');
            break;
        }
    }
  }
}
