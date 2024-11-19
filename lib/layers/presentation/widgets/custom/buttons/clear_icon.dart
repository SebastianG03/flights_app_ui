import 'package:flutter/material.dart';

class ClearIcon extends StatelessWidget {
  final double iconSize;
  final Color borderColor;
  final Color backgroundColor;
  final Color iconColor;

  const ClearIcon(
      {super.key,
      this.borderColor = Colors.transparent,
      this.iconSize = 20,
      this.backgroundColor = Colors.grey,
      this.iconColor = Colors.white30});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: borderColor, style: BorderStyle.solid, width: 1.5),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.clear_rounded,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
