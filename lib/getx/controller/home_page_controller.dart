import 'package:dice_app/services/random_service.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePageController extends GetxController{
  Rx<int> firstDice = 6.obs;
  RxInt secondDice = 4.obs;

  void ozgort() {
    firstDice.value = RandomService.getRandomNumber ();
    secondDice .value= RandomService.getRandomNumber ();
    update ();
  }
}