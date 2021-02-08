part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthButtonPressed extends AuthEvent {}

class AuthUIDFieldTyping extends AuthEvent {}

class AunthPhoneFieldTyping extends AuthEvent {}
