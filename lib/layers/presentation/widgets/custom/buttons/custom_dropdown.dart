import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String hint;
  final List<String> items;
  const CustomDropdownButton(
      {super.key, required this.items, required this.hint});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade400, width: 1.5),
      ),
      child: DropdownButton<String>(
          iconSize: 0,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          hint: Text(
            widget.hint,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
          items: [
            ...widget.items.map((val) => DropdownMenuItem<String>(
                value: val,
                child: Text(
                  val,
                )))
          ],
          style: const TextStyle(
              fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),
          underline: const SizedBox.shrink(),
          onChanged: (value) {}),
    );
  }
}
