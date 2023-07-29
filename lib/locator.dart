import 'package:get_it/get_it.dart';

import 'core/datasources/remote/dio/dio_provider.dart';
import 'core/datasources/remote/remote_service.dart';
import 'features/feature_login/data/repository/login_reposintory_impl.dart';
import 'features/feature_login/domain/repository/login_repository.dart';
import 'features/feature_login/domain/usecase/login_usecase.dart';

GetIt locator = GetIt.instance;

setup() async {
  locator.registerSingleton<DioProvider>(DioProvider());
  locator.registerSingleton<RemoteService>(RemoteService(locator()));

  /// repositories
  locator.registerSingleton<LoginRepository>(LoginRepositoryImpl(locator()));

  /// use case
  locator.registerSingleton<LoginUseCase>(LoginUseCase(locator()));

  // locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}