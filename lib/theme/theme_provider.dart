import 'package:flutter/material.dart';
import 'package:food/theme/dark_theme.dart';
import 'package:food/theme/light_theme.dart';
// Provider로 제공될떄는 ChangeNotifier

class ThemeProvider with ChangeNotifier {
  // 현재 Theme private하게만들어서 외부에서 접근못하게만듬
  // ignore: prefer_final_fields
  ThemeData _theme = lightTheme;
  // 현재 Darkmode 인지 확인하기
  bool get isDarkMode => _theme == darkTheme;
  // ThemeData // get 으로 가져오기 항상 get set뭐 이런건 데이터 타입만들고나서
  ThemeData get themeData => _theme;
  // Set the ThemeData
  set themeData(ThemeData themeData) {
    _theme = themeData;
    // 변경될때마다 provider에 항상 알려주기
    notifyListeners();
  }

  void toggleTheme() {
    if (_theme == darkTheme) {
      themeData = lightTheme;
    } else {
      themeData = darkTheme;
    }
  }
}
