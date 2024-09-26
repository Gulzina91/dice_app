import 'package:dice_app/services/random_service.dart';
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier{
int firstDice = 6;
int secondDice = 4;

void ozgort() {
    firstDice = RandomService.getRandomNumber ();
    secondDice = RandomService.getRandomNumber ();
    notifyListeners();
    }
}
