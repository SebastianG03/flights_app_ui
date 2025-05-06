import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/domain/entities/selection_modes.dart';
import 'package:flights_app/layers/presentation/widgets/custom/inputs/counter_button.dart';
import 'package:flutter/material.dart';

class SelectionButton extends StatefulWidget {
  final String label;
  final String hint;
  final SelectionModes selectionMode;
  final int inferiorLimit;
  final int superiorLimit;
  const SelectionButton(
      {super.key,
      required this.label,
      this.hint = '',
      this.inferiorLimit = 1,
      this.superiorLimit = 9,
      this.selectionMode = SelectionModes.radio});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Text(
            widget.label,
            style: AppTheme.titleTextStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            widget.hint,
            style: AppTheme.titleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
          const Spacer(),
          if (widget.selectionMode == SelectionModes.checkbox)
            ...[]
          else if (widget.selectionMode == SelectionModes.radio)
            ...[]
          else ...[
            CounterButton(
              inferiorLimit: widget.inferiorLimit,
              superiorLimit: widget.superiorLimit,
            )
          ]
        ],
      ),
    );
  }
}
