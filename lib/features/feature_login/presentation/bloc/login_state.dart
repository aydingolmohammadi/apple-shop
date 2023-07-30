part of 'login_bloc.dart';

class LoginState {
  UlStatus ulStatus;

  LoginState({required this.ulStatus});

  LoginState copyWith({
    UlStatus? newUlStatus,
  }) {
    return LoginState(ulStatus: newUlStatus ?? ulStatus);
  }
}
