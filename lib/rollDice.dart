import 'package:flutter/material.dart';

import 'dart:math';

var randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({key}) : super(key: key);

  @override
  State<RollDice> createState() {
    return _Roller();
  }
}

class _Roller extends State<RollDice> {
  var currentNumber = 3;

  void rolledState() {
    setState(() {
      currentNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice$currentNumber.JPG'),
        TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 28),
              foregroundColor: Colors.amber,
            ),
            onPressed: rolledState,
            child: Text('Roll Dice'))
      ],
    );
  }
}
