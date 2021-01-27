import 'package:flutter/material.dart';

import 'domain/splash/splash.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class MyEvpaNetApp extends MaterialApp {
  /// {@macro counter_app}
  const MyEvpaNetApp({Key key}) : super(key: key, home: const SplashPage());
}
