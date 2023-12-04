import 'package:farm_management/app/data/models/user_model.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  UserModel userModel = UserModel(
      userId: 'id',
      userName: 'Nome',
      userEmail: 'email@gmail',
      userType: 'tecnico',
      userCel: '123458987',
      userCrea: '98751321');

  @observable
  bool done = false;
}
