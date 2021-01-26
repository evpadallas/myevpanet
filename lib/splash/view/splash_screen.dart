import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/home/view/home_screen.dart';
import 'package:myevpanet/login/view/login_screen.dart';
import 'package:myevpanet/splash/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if ((state is SplashInitial)) {
              return Center(
                child: Text(
                  'Какая-то сплэш страница',
                  style: textTheme.bodyText1,
                ),
              );
            } else if (state is SplashSuccess) {
              return HomeScreen();
            }

            return LoginScreen();
          },
        ),
      ),
    );
  }
}
