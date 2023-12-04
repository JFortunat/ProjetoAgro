import 'package:farm_management/app/domain/usecases/auth/login_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  var loginUseCase = GetIt.I.get<LoginUsecase>();

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  Future login() async {
    await loginUseCase.loginUseCase(email, password);
  }
}
