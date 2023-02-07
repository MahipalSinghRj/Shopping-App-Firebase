import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? const Color(0xFF00001a) : const Color(0xFFFFFFFF),
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme ? const Color(0xFF1a1f3c) : const Color(0xFFE8FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme:
          Theme.of(context).buttonTheme.copyWith(colorScheme: isDarkTheme ? const ColorScheme.dark() : const ColorScheme.light()),
    );
  }
}

// class DarkThemePref {
//   String THEME_STATUS = "THEME_STATUS";
//
//   setDarkTheme(bool value) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     preferences.setBool(THEME_STATUS, value);
//   }
//
//   getDarkTheme() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     preferences.getBool(THEME_STATUS) ?? false;
//   }
// }

// class DarkThemeProvider with ChangeNotifier {
//   DarkThemePref darkThemePref = DarkThemePref();
//   bool _darkTheme = false;
//
//   bool get getDarkTheme => _darkTheme;
//
//   Set setDarkTheme(bool value) {
//     _darkTheme = value;
//     return darkThemePref.setDarkTheme(value);
//     notifyListeners();
//   }
//
// }
