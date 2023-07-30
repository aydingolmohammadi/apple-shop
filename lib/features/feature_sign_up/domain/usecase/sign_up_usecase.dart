import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/sign_up_entity.dart';
import '../params/sign_up_param.dart';
import '../repository/sign_up_repository.dart';

class SignUpUseCase implements UseCase<DataState<SignUpEntity>, SignUpParam > {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);

  @override
  Future<DataState<SignUpEntity>> call({required SignUpParam params}) {
    return _repository.signUpUser(signUpParam: params);
  }
}
