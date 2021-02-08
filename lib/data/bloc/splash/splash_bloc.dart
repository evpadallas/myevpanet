import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:myevpanet/data/repositories/guids_repository.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GuidsRepository repo;

  SplashBloc(this.repo)
      : super(
          SplashInitialState(),
        );

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is CheckAuthorization) {
      var guids = await repo.getGUIDS();

      await Future.delayed(
        Duration(
          seconds: 5,
        ),
      );

      //List<String> guids = ["as","as","as"];

      if (guids?.isEmpty ?? true) {
        yield SplashFailureState();
      } else {
        yield SplashSuccessState(
          guids: guids,
        );
      }
    }
  }
}
