import 'package:flutter/material.dart';

import 'package:dice/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        colory: [
          Color.fromARGB(255, 8, 168, 248),
          Color.fromARGB(115, 241, 7, 7),
          Color.fromARGB(255, 247, 69, 4)
        ],
      )),
    ),
  );
}
