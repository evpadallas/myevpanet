import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/ui/screens/home_screen.dart';
import 'package:myevpanet/ui/screens/login_screen.dart';
import 'package:myevpanet/domain/splash/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if ((state is SplashInitialState)) {
              return Center(
                child: Text(
                  'Какая-то сплэш страница',
                  style: textTheme.bodyText1,
                ),
              );
            } else if (state is SplashSuccessState) {
              return HomeScreen();
            }

            return LoginScreen();
          },
        ),
      ),
    );
  }
}
