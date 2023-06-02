import 'package:flutter/material.dart';

import 'package:dice/rollDice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({key, required this.colory})
      : super(
          key: key,
        );

  final List<Color> colory;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colory,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
