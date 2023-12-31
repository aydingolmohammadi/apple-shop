import 'package:dio/dio.dart';

import '../../../constants/constants.dart';
import '../interceptor/logging_interceptor.dart';
import '../remote_service.dart';

class DioProvider {
  late Dio dio;
  late RemoteService remoteService;
  static final DioProvider _instance = DioProvider._internal();
  factory DioProvider() => _instance;


  DioProvider._internal() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: kConnectTimeout),
        receiveTimeout: const Duration(milliseconds: kReceiveTimeout),
      ),
    )..interceptors.addAll(
      [
        LoggingInterceptor(),
      ],
    );
    remoteService = RemoteService(dio);
  }
}
