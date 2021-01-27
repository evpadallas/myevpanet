import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myevpanet/ui/screens/home_screen.dart';
import 'package:myevpanet/ui/screens/login_screen.dart';
import 'package:myevpanet/domain/splash/blocs/splash_bloc.dart';
//import 'package:myevpanet/splash/view/splash_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => SplashBloc(),
        //child: SplashScreen(),
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
        ));
  }
}
