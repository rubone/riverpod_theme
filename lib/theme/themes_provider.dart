import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themesProvider = StateNotifierProvider<ThemesProvider, ThemeMode>((ref) {
  return ThemesProvider();
});

class ThemesProvider extends StateNotifier<ThemeMode> {
  ThemesProvider() : super(ThemeMode.system);

  void changeTheme(bool isOn) {
    state = isOn ? ThemeMode.dark : ThemeMode.light;
  }
}
