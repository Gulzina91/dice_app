import 'dart:developer';
import 'package:dice_app/constants/text_style/app_text_styles.dart';
import 'package:dice_app/riverpod/providers/home_page_riverpod_provider.dart';
import 'package:flutter/material.dart';
import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class RiverpodHomePage extends StatelessWidget {
  RiverpodHomePage({super.key});

  int count = 0;

  @override
  Widget build(BuildContext context) {
    count++;
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final homeNotifier = ref.watch(homeNotifierProvider);
              return InkWell(
                onTap: () => ref.read(homeNotifierProvider.notifier).ozgort(),
                child: Row(
                  children: [
                    DiceWidget(diceNumber: homeNotifier.firstDice),
                    const SizedBox(width: 18),
                    DiceWidget(diceNumber: homeNotifier.secondDice),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


// import 'dart:developer';

// import 'package:dice_app/riverpod/providers/home_page_riverpod_provider.dart';
// import 'package:flutter/material.dart';

// import 'package:dice_app/constants/colors/app_colors.dart';
// import 'package:dice_app/constants/text_styles/app_text_styles.dart';
// import 'package:dice_app/widgets/dice_widget.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class RiverpodHomePage extends ConsumerWidget {
//   RiverpodHomePage({super.key});

//   /// final, const, var, dynamic
//   /// final - runtime constant
//   /// const - compile time constant
//   /// var vs dynamic - var is a type inference,
//   /// dynamic is a type that can be changed

//   int count = 0;
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     count++;
//     log('count $count');

//     final homeNotifier = ref.watch(homeNotifierProvider);

//     return Scaffold(
//       backgroundColor: AppColors.bgColor,
//       appBar: AppBar(
//         title: const Text(
//           'Dice',
//           style: AppTextStyles.appBarTitle,
//         ),
//         backgroundColor: AppColors.bgColor,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 18.0),
//         child: Center(
//           child: InkWell(
//             onTap: () => ozgort(ref),
//             child: Row(
//               children: [
//                 DiceWidget(diceNumber: homeNotifier.firstDice),
//                 const SizedBox(width: 18),
//                 DiceWidget(diceNumber: homeNotifier.secondDice),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void ozgort(WidgetRef ref) {
//     ref.read(homeNotifierProvider.notifier).ozgort();
//   }
// }