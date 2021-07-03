import 'package:flutter/material.dart';

import '../theme/dark/app_theme_dark.dart';
import '../theme/default/app_theme_default.dart';
import '../theme/light/app_theme_light.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeDefault.instance!.theme;
  ThemeData get currentTheme => _currentTheme;

  bool get isDark => _currentTheme == AppThemeDark.instance!.theme;

  // void changeValue(AppThemes theme) {
  //   switch (theme) {
  //     case AppThemes.LIGHT:
  //       _currentTheme = AppThemeLight.instance!.theme;
  //       break;
  //     case AppThemes.DARK:
  //       _currentTheme = AppThemeDark.instance!.theme;
  //       break;
  //     case AppThemes.RED:
  //       _currentTheme = AppThemeRed.instance!.theme;
  //       break;
  //     default:
  //       _currentTheme = AppThemeLight.instance!.theme;
  //   }
  //   notifyListeners();
  // }

  void toggleTheme() {
    if (isDark) {
      _currentTheme = AppThemeLight.instance!.theme;
    } else {
      _currentTheme = AppThemeDark.instance!.theme;
    }
    notifyListeners();
  }

  void toggleBrightness() {
    if (_currentTheme.brightness == Brightness.dark) {
      _currentTheme = _currentTheme.copyWith(brightness: Brightness.light);
    } else {
      _currentTheme = _currentTheme.copyWith(brightness: Brightness.dark);
    }
    notifyListeners();
  }
}
