import 'package:farm_management/app/data/models/user_model.dart';
import 'package:mobx/mobx.dart';
part 'home_navigation_view.g.dart';

class HomeNavigationController = _HomeNavigationControllerBase with _$HomeNavigationController;

abstract class _HomeNavigationControllerBase with Store {

  @observable
  UserModel userModel = UserModel(
      userId: 'id',
      userName: 'Nome',
      userEmail: 'email@gmail',
      userType: 'nada',
      userCel: '123458987',
      userCrea: '98751321');

  
}