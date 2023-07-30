part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class UsEvent extends SignUpEvent{
  final SignUpParam signUpParam;

  UsEvent(this.signUpParam);
}
