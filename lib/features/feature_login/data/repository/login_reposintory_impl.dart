import 'package:dio/dio.dart';

import '../../../../core/datasources/remote/remote_service.dart';
import '../../../../core/resources/data_state.dart';
import '../../../../core/utils/exception_parser.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/params/login_param.dart';
import '../../domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final RemoteService _remoteService;

  const LoginRepositoryImpl(this._remoteService);

  @override
  Future<DataState<LoginEntity>> loginUser({required LoginParam loginParam}) async{
    try {
      final httpResponse = await _remoteService.loginUser(loginParam: loginParam);

      if (ExceptionParser.isResponseSuccessful(httpResponse)) {
        return DataSuccess(httpResponse.data);
      }
      return ExceptionParser.getApiDioError(httpResponse);
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}