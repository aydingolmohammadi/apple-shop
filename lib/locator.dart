import 'package:apple_shop/features/feature_login/data/repository/login_reposintory_impl.dart';
import 'package:apple_shop/features/feature_login/domain/repository/login_repository.dart';
import 'package:apple_shop/features/feature_login/domain/usecase/login_usecase.dart';
import 'package:apple_shop/features/feature_login/presentation/bloc/login_bloc.dart';
import 'package:apple_shop/features/feature_sign_up/data/repository/sign_up_reposintory_impl.dart';
import 'package:apple_shop/features/feature_sign_up/domain/repository/sign_up_repository.dart';
import 'package:apple_shop/features/feature_sign_up/domain/usecase/sign_up_usecase.dart';
import 'package:apple_shop/features/feature_sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/datasources/remote/dio/dio_provider.dart';
import 'core/datasources/remote/remote_service.dart';

GetIt locator = GetIt.instance;

setup() async {
  locator.registerSingleton<Dio>(DioProvider().dio);
  locator.registerSingleton<RemoteService>(RemoteService(locator()));

  /// repositories
  locator.registerSingleton<SignUpRepository>(SignUpRepositoryImpl(locator()));
  locator.registerSingleton<LoginRepository>(LoginRepositoryImpl(locator()));

  /// use case
  locator.registerSingleton<SignUpUseCase>(SignUpUseCase(locator()));
  locator.registerSingleton<LoginUseCase>(LoginUseCase(locator()));

  locator.registerSingleton<SignUpBloc>(SignUpBloc(locator()));
  locator.registerSingleton<LoginBloc>(LoginBloc(locator()));
}