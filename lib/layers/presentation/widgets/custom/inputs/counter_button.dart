import 'package:flutter/material.dart';

import '../buttons/filled_rectangular_icon_button.dart';

class CounterButton extends StatefulWidget {
  final int superiorLimit;
  final int inferiorLimit;
  const CounterButton(
      {super.key, this.inferiorLimit = 1, this.superiorLimit = 9});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int value = 1;

  @override
  void initState() {
    super.initState();
    value = widget.inferiorLimit;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledRectangularIconButton(
              size: 30,
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
              onPressed:
                  value == widget.inferiorLimit ? null : () => changeValue(-1)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('$value'),
          ),
          FilledRectangularIconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
            onPressed:
                value == widget.superiorLimit ? null : () => changeValue(1),
            size: 30,
          )
        ],
      ),
    );
  }

  void changeValue(int valueChange) {
    setState(() {
      if (value + valueChange < widget.inferiorLimit) return;
      if (value + valueChange > widget.superiorLimit) {
        value = widget.superiorLimit;
        return;
      }

      value += valueChange;
    });
  }
}
