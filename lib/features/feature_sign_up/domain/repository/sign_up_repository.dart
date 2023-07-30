import '../../../../core/resources/data_state.dart';
import '../entity/sign_up_entity.dart';
import '../params/sign_up_param.dart';

abstract class SignUpRepository {
  Future<DataState<SignUpEntity>> signUpUser(
      {required SignUpParam signUpParam});
}