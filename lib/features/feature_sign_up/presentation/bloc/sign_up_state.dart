part of 'sign_up_bloc.dart';

class SignUpState {
  UsStatus usStatus;

  SignUpState({required this.usStatus});

  SignUpState copyWith({
    UsStatus? newUsStatus,
  }) {
    return SignUpState(usStatus: newUsStatus ?? usStatus);
  }
}
