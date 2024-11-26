import 'package:flutter/material.dart';

class CustomModalButton extends StatefulWidget {
  final String hint;
  final VoidCallback onTap;
  const CustomModalButton({super.key, required this.onTap, required this.hint});

  @override
  State<CustomModalButton> createState() => _CustomModalButtonState();
}

class _CustomModalButtonState extends State<CustomModalButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade400, width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(widget.hint),
        ),
      ),
    );
  }
}
