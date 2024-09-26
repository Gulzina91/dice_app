import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_style/app_text_styles.dart';
import 'package:dice_app/getx/controller/home_page_controller.dart';
import 'package:dice_app/widgets/dice_widget.dart';

class HomePageWithGetX extends StatefulWidget {
  const HomePageWithGetX({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageWithGetXState createState() => _HomePageWithGetXState();
}

class _HomePageWithGetXState extends State<HomePageWithGetX> {
  final HomePageController _controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
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
                Obx(() {
                  return DiceWidget(diceNumber: _controller.firstDice.value);
                }),
                const SizedBox(
                  width: 10,
                ),
                Obx(() => DiceWidget(diceNumber: _controller.secondDice.value)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ozgort() {
    _controller.ozgort();
  }
}
