import 'package:apple_shop/features/feature_login/domain/params/login_param.dart';
import 'package:apple_shop/features/feature_sign_up/domain/params/sign_up_param.dart';
import 'package:apple_shop/features/feature_sign_up/presentation/bloc/us_status.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/usecase/sign_up_usecase.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc(this.signUpUseCase)
      : super(
          SignUpState(
            usStatus: UsLoading(),
          ),
        ) {
    on<UsEvent>((event, emit) async {
      emit(state.copyWith(newUsStatus: UsLoading()));
      DataState dataState = await signUpUseCase(params: event.signUpParam);
    });
  }
}
