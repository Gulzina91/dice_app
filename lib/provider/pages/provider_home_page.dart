import 'dart:developer';
import 'package:dice_app/provider/providers/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_style/app_text_styles.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:provider/provider.dart';


class ProviderHomePage extends StatefulWidget {
const ProviderHomePage({super.key});

@override
// ignore: library_private_types_in_public_api
_ProviderHomePageState createState() => _ProviderHomePageState();
}

class _ProviderHomePageState extends State<ProviderHomePage> {

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
            onTap: ozgort,
            child: Consumer <HomePageProvider> (builder: (context,provider, child){
              return Row(
              children: [
                DiceWidget(diceNumber: provider.firstDice),
                const SizedBox(
                  width: 18,
                ),
              DiceWidget(diceNumber: provider.secondDice),
              ],
            );
            },),
          ),
        ),
      ),
    );
  }

  void ozgort() {
    Provider.of<HomePageProvider>(context, listen: false).ozgort();

  }
}

