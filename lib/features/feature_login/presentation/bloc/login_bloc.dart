import 'package:apple_shop/core/utils/page_route_animation.dart';
import 'package:apple_shop/features/feature_login/presentation/bloc/ul_status.dart';
import 'package:apple_shop/features/feature_main/presentation/screen/main_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
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
            ulStatus: UlInit(),
          ),
        ) {
    on<UlEvent>(
      (event, emit) async {
        emit(state.copyWith(newUlStatus: UlLoading()));
        DataState dataState = await loginUseCase.call(params: event.loginParam);
        if (dataState is DataSuccess) {
          emit(state.copyWith(newUlStatus: UlCompleted(dataState.data)));
        }
        if (dataState is DataFailed) {
          emit(state.copyWith(newUlStatus: UlError('error')));
        }
      },
    );
  }
}
