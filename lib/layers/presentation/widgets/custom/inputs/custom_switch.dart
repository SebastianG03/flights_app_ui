import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      activeColor: const Color.fromARGB(255, 192, 37, 66),
      splashRadius: 20.0,
      onChanged: (value) => setState(() => _value = value),
    );
  }
}
