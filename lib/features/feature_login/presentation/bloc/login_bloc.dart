import 'package:apple_shop/features/feature_login/presentation/bloc/ul_status.dart';
import 'package:apple_shop/features/feature_sign_up/presentation/bloc/us_status.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/params/login_param.dart';
import '../../domain/usecase/login_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase)
      : super(
          LoginState(
            ulStatus: UlLoading(),
          ),
        ) {
    on<UlEvent>((event, emit) async {
      emit(state.copyWith(newUlStatus: UlLoading()));
      DataState dataState = await loginUseCase(params: event.loginParam);
    });
  }
}
