import 'package:flutter/material.dart';

import 'package:dice_app/widgets/app_images.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    super.key,
    required this.diceNumber,
  });

  final int diceNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AppImages.dice(diceNumber),
      );
  }
}
