import 'package:flutter/material.dart';
import 'package:weather_fashion/servise/shared_preference.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }

  bool updateTheme(bool value) {
    bool returnModel = _darkTheme;

    returnModel = value;
    _darkTheme =  returnModel;
    notifyListeners();

    return returnModel;
  }
}