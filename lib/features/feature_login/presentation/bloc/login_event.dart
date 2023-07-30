part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class UlEvent extends LoginEvent{
  final LoginParam loginParam;

  UlEvent(this.loginParam);
}
