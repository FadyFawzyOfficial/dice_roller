import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Color color1;
  final Color color2;

  const GradientContainer({super.key, required this.child})
      : color1 = Colors.deepPurple,
        color2 = Colors.deepOrange;

  const GradientContainer.colors({
    super.key,
    required this.child,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
      ),
      child: child,
    );
  }
}
