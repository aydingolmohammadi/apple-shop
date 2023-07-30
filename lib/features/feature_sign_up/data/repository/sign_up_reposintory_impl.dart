import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/datasources/remote/remote_service.dart';
import '../../../../core/resources/data_state.dart';
import '../../../../core/utils/exception_parser.dart';
import '../../domain/entity/sign_up_entity.dart';
import '../../domain/params/sign_up_param.dart';
import '../../domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final RemoteService _remoteService;

  const SignUpRepositoryImpl(this._remoteService);

  @override
  Future<DataState<SignUpEntity>> signUpUser({required SignUpParam signUpParam}) async{
    try {
      final httpResponse = await _remoteService.signUpUser(signUpParam: signUpParam);

      if (ExceptionParser.isResponseSuccessful(httpResponse)) {
        return DataSuccess(httpResponse.data);
      }
      return ExceptionParser.getApiDioError(httpResponse);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e.response?.statusCode);
        print(e.response?.data['message']);
      }
      return DataFailed(e);
    }
  }
}