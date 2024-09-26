import 'package:dice_app/services/random_service.dart';

class HomePageBusinessLogic {
  int firstDice = 6;
  int secondDice = 4;

  void ozgort() {
    firstDice = RandomService.getRandomNumber ();
    secondDice = RandomService.getRandomNumber ();

  }
}

HomePageBusinessLogic homePageBusinessLogic = HomePageBusinessLogic();