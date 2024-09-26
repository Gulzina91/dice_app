import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dice_app/services/random_service.dart';

class HomePageNotifier extends StateNotifier<HomePageNotifierState> {
  HomePageNotifier()
      : super(
          HomePageNotifierState(firstDice: 1, secondDice: 2),
        );

  void ozgort() {
    final newFirstDice = RandomService.getRandomNumber();
    final newSecondDice = RandomService.getRandomNumber();

    state = HomePageNotifierState(
      firstDice: newFirstDice,
      secondDice: newSecondDice,
    );
  }
}

final homeNotifierProvider =
    StateNotifierProvider<HomePageNotifier, HomePageNotifierState>((ref) {
  return HomePageNotifier();
});

class HomePageNotifierState {
  final int firstDice;
  final int secondDice;

  HomePageNotifierState({
    required this.firstDice,
    required this.secondDice,
  });
}