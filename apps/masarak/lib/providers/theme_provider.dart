import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/services/storage/theme_storage.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier()
      : super(
          ThemeMode.system,
        ) {
    watchState();
  }
  ThemeStorage repo = ThemeStorage();

  Future<void> watchState() async {
    state = await ThemeStorage.themeMode();
    ThemeStorage.listen((value) {
      state = value!;
    });
  }
}
