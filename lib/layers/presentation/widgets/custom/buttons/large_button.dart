import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final bool hasShadow;
  final Color color;
  final Color textColor;
  final VoidCallback? onTap;

  const LargeButton(
      {super.key,
      required this.text,
      this.hasShadow = true,
      this.color = AppTheme.primaryButton,
      this.onTap,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    List<BoxShadow>? boxShadows = !hasShadow
        ? null
        : const [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                spreadRadius: -5,
                offset: Offset(-1, 10)),
            BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(5, 5))
          ];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 9),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.green.shade400),
          borderRadius: BorderRadius.circular(8),
          boxShadow: boxShadows,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
