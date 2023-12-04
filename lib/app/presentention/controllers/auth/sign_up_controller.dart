import 'package:farm_management/app/data/models/user_model.dart';
import 'package:farm_management/app/domain/usecases/auth/sign_up_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'sign_up_controller.g.dart';

class SignUpController = _SignUpControllerBase with _$SignUpController;

abstract class _SignUpControllerBase with Store {
  var signUpUseCase = GetIt.I.get<SignUpUseCase>();

  @observable
  String userName = '';

  @observable
  String userEmail = '';

  @observable
  String userPass = '';

  @observable
  String userConfirmPass = '';

  @observable
  String userCel = '';

  @observable
  String userCrea = '';

  @observable
  String userType = '';

  @action
  Future createUser() async {
    if (userName.isNotEmpty &&
        userPass == userConfirmPass &&
        userPass.isNotEmpty &&
        userCel.isNotEmpty) {
      await signUpUseCase.signUpUseCase(
        UserModel(
            userId: '',
            userEmail: userEmail,
            userName: userName,
            userType: userType,
            userCel: userCel,
            userCrea: userCrea),
      );
    }
  }
}
