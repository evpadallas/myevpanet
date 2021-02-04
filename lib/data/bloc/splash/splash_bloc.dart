import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:myevpanet/data/repositories/guids_repository.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GuidsRepository repo;

  SplashBloc(this.repo) : super(SplashInitialState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is CheckAuthorization) {
      var guids = repo.getGUIDS();

      await Future.delayed(Duration(seconds: 10));

      if (guids.isEmpty) {
        yield SplashFailureState();
      } else {
        yield SplashSuccessState(guids: guids);
      }
    }
  }
}
