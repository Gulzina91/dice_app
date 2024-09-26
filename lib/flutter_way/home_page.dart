

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_style/app_text_styles.dart';
import 'package:dice_app/flutter_way/business_logic/home_page_business_logic.dart';
import 'package:dice_app/widgets/dice_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int count = 0;
  @override
  Widget build(BuildContext context) {
    count ++;
    log('count $count');
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: AppTextStyles.appBarTitle,
          ),
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: InkWell(
            onTap: () {
              ozgort();
            },
            child: Row(
              children: [
                DiceWidget(diceNumber: homePageBusinessLogic.firstDice),
                const SizedBox(
                  width: 10,
                ),
              DiceWidget(diceNumber: homePageBusinessLogic.secondDice),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ozgort() {
homePageBusinessLogic.ozgort();

    setState(() {});
  }
}

