import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myevpanet/ui/app.dart';
import 'package:myevpanet/data/myevpanet_observer.dart';

void main() async {
  /// инициализируем Hive
  await Hive.initFlutter();

  /// вызываем обзёрвер
  Bloc.observer = MyEvpaNetObserver();

  /// запускаем приложение
  runApp(
    MyEvpaNetApp(),
  );
}
