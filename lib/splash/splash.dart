import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/splash/bloc/splash_bloc.dart';
import 'package:myevpanet/splash/view/splash_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(),
      child: SplashScreen(),
    );
  }
}
