import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/splash/splash.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class MyEvpaNetApp extends MaterialApp {
  /// {@macro counter_app}
  const MyEvpaNetApp({Key key})
      : super(
          key: key,
          home:  const SplashPage(),
        );
}
