import 'package:mobx/mobx.dart';
part 'lands_controller.g.dart';

class LandsController = _LandsControllerBase with _$LandsController;

abstract class _LandsControllerBase with Store {

  @observable
  String cultureName = '';

  @observable
  String cultureDiscription = '';

  @observable
  DateTime plantationStart = DateTime.now();

  @observable
  DateTime estimatedTime = DateTime.now();

  @observable
  double landSize = 0.0;

  @observable
  double lat = 0.0;
  
  @observable
  double lon = 0.0;


  
}