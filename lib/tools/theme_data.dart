import 'package:flutter/material.dart';
import 'package:studyportal/tools/constants.dart';

class GlobalThemeData {
  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
        colorScheme: colorScheme, focusColor: focusColor, useMaterial3: true);
  }

  static final Color _lightFocusColor = Colors.white.withOpacity(0.12);
  // static final Color _darkFocusColor = Colors.black.withOpacity(0.12);
  static ThemeData lightThemeData =
      themeData(_lightColorScheme, _lightFocusColor);
  // static ThemeData _darkThemeData =
  //     themeData(_darkColorScheme, _darkFocusColor);

  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: Colors.white,
    onPrimary: Color(spRoyalBlue),
    secondary: Color(spRoyalBlue),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.light,
    surface: Color(spOffWhite),
    onSurface: Color(spRoyalBlue),
  );
  // static const ColorScheme _darkColorScheme = ColorScheme();
}
