import 'package:flutter/material.dart';

class ModalGestureDetector extends StatelessWidget {
  final double screenHeight;
  final double limitHeight;
  final Widget child;

  const ModalGestureDetector({
    super.key,
    required this.child,
    required this.screenHeight,
    required this.limitHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        final dy = details.globalPosition.dy;
        final dx = details.globalPosition.dx;

        debugPrint("Position details: ($dx, $dy)");
        // final touchArea = screenHeight - limitHeight;
        // if (dy < limitHeight) {
        //   Navigator.pop(context);
        // }
      },
      child: child,
    );
  }
}
