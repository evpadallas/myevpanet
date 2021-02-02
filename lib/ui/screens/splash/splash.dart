import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/data/bloc/splash_bloc.dart';
import 'package:myevpanet/ui/screens/home/home_screen.dart';
import 'package:myevpanet/ui/screens/auth/login_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashSuccessState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          } else if (state is SplashFailureState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen(),
              ),
            );
          }

          return SplashInitialState();
        },
      ),
    );
  }
}
