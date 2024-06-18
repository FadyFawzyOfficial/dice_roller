import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var diceNumber = 1;

  void rollDice() => setState(() => diceNumber = random.nextInt(6) + 1);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: rollDice,
            child: Image(
              width: 200,
              image: AssetImage('assets/images/dice_$diceNumber.png'),
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            onPressed: rollDice,
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
