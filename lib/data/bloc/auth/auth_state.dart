part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// Инициализация
class AuthInitial extends AuthState {}

// Состояние - нажата кнопка отправки формы, тут или показать прелоадер или заменить на кнопке текст, в общем дизайн, показывающий что идёт работа
class LoginFormButtonPressed extends AuthState {}

// Если авторизация успешна, в ответе error = FALSE
class AuthSuccess extends AuthState {}

// Если авторизация провалена, в ответе error = TRUE, показать сообщение об ошибке, например toast или подобное
class AuthFailure extends AuthState {}
