import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppImages {
  static Widget dice(int diceNumber){
    return Image.asset(
      'assets/images/dice_$diceNumber.png',
      color: AppColors.white,
    );
  }
}