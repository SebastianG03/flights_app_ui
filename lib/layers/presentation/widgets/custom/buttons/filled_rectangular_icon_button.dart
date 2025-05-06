import 'package:flutter/material.dart';

class FilledRectangularIconButton extends StatelessWidget {
  final Icon icon;
  final double size;
  final Color color;
  final VoidCallback? onPressed;
  const FilledRectangularIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.size = 50,
      this.color = const Color.fromARGB(255, 97, 139, 211)});

  @override
  Widget build(BuildContext context) {
    return Container(
      transformAlignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: InkWell(
        onTap: onPressed,
        radius: 1.5,
        child: icon,
      ),
    );
  }
}
