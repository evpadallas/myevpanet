part of 'splash_bloc.dart';

@immutable
abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

// Состояние проверок
class SplashInitial extends SplashState {}

// Проверки пройдены, абонент залогинен (присутствует файл с GUIDS и он не пуст) Необходимо тут получить согласно гуидам информацию.
class SplashSuccess extends SplashState {
  final List<GUIDS> guids;

  const SplashSuccess({this.guids});
}

// Проверки не пройдены. Или нет сети, или файла нет или файл пуст. Если нет интернета, отрисовать ошибку на сплеш скрине, если нет guids или файла, переход на LoginScreen.
class SplashFailure extends SplashState {}
