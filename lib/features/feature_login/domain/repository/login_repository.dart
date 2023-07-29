import '../../../../core/resources/data_state.dart';
import '../entity/login_entity.dart';
import '../params/login_param.dart';

abstract class LoginRepository {
  Future<DataState<LoginEntity>> loginUser(
      {required LoginParam loginParam});
}