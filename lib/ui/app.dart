import 'package:flutter/material.dart';
import '../data/bloc/splash.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class MyEvpaNetApp extends MaterialApp {
  /// {@macro counter_app}
  const MyEvpaNetApp({Key key})
      : super(
          key: key,
          home: const SplashPage(),
        );
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildDarkTheme(),
      home: Scaffold(),
    );
  }
}

ThemeData _buildDarkTheme() {
  final baseTheme = ThemeData(
    fontFamily: "Open Sans",
  );
  return baseTheme.copyWith(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF143642),
    primaryColorLight: Color(0xFF26667d),
    primaryColorDark: Color(0xFF08161b),
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
  );
}
