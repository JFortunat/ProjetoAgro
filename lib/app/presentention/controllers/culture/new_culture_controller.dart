import 'package:mobx/mobx.dart';
part 'new_culture_controller.g.dart';

class NewCultureController = _NewCultureControllerBase with _$NewCultureController;

abstract class _NewCultureControllerBase with Store {

   @observable
  DateTime plantationStart = DateTime.now();

  @observable
  DateTime estimatedTime = DateTime.now();
  
}