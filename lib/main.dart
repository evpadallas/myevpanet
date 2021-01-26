import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/app.dart';
import 'package:myevpanet/myevpanet_observer.dart';

void main() {
  Bloc.observer = MyEvpaNetObserver(); // вызываем обзёрвер
  runApp(const MyEvpaNetApp()); // запускаем приложение
}
