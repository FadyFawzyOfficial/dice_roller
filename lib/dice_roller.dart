import 'package:flutter/material.dart';

import 'gradient_container.dart';
import 'roller.dart';

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(context) => const MaterialApp(
      home: Scaffold(body: GradientContainer(child: Roller())));
}
