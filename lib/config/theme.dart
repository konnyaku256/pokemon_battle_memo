import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

const int myPrimaryColorValue = 0xffe40b20;
Map<int, Color> mySwatch = {
  50: const Color(0xfffce2e4),
  100: const Color(0xfff7b6bc),
  200: const Color(0xfff28590),
  300: const Color(0xffec5463),
  400: const Color(0xffe83041),
  500: const Color(myPrimaryColorValue),
  600: const Color(0xffe10a1c),
  700: const Color(0xffdd0818),
  800: const Color(0xffd90613),
  900: const Color(0xffd1030b),
};

MaterialColor myMaterialColorTheme =
    MaterialColor(myPrimaryColorValue, mySwatch);

const isDarkMode = 'is_dark_mode';

// テーマ変更用の状態クラス
class MyBrightnessNotifier extends ChangeNotifier {
  Brightness currentBrightness = Brightness.light;

  MyBrightnessNotifier() {
    // コンストラクタで現在の輝度設定を初期化
    // コンストラクタではasync関数をawaitなしで利用できる
    setCurrentBrightness();
  }

  Future<bool> getIsDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isDarkMode) ?? false;
  }

  Future<void> setCurrentBrightness() async {
    currentBrightness =
        await getIsDarkMode() ? Brightness.dark : Brightness.light;
  }

  Future<void> toggleBrightness() async {
    final isDark = await getIsDarkMode();
    currentBrightness = isDark ? Brightness.light : Brightness.dark;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isDarkMode, !isDark);
    notifyListeners();
  }
}
