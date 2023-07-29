import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/login_entity.dart';
import '../params/login_param.dart';
import '../repository/login_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginEntity>, LoginParam > {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<DataState<LoginEntity>> call({required LoginParam params}) {
    return _repository.loginUser(loginParam: params);
  }
}
