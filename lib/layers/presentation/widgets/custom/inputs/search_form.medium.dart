import 'package:flights_app/layers/presentation/widgets/custom/buttons/clear_icon.dart';
import 'package:flutter/material.dart';

class SearchFormMedium extends StatefulWidget {
  final IconData prefixIcon;
  final String helperText;
  final TextEditingController? controller;
  const SearchFormMedium(
      {super.key,
      required this.prefixIcon,
      this.helperText = '',
      this.controller});
  @override
  State<SearchFormMedium> createState() => _SearchFormMediumState();
}

class _SearchFormMediumState extends State<SearchFormMedium> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller!;
    } else {
      controller = TextEditingController();
    }
  }

  String value = '';
  final outlineBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(12)));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.prefixIcon,
          size: 25,
        ),
        suffixIcon: controller.text.isEmpty
            ? null
            : GestureDetector(
                onTap: () {
                  setState(() => controller.clear());
                },
                child: ClearIcon(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  iconColor: Colors.white,
                  iconSize: 15,
                ),
              ),
        border: outlineBorder,
        enabledBorder: outlineBorder,
        focusedBorder: outlineBorder,
        hintText: widget.helperText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4), fontSize: 14),
      ),
      onChanged: (value) => setState(() => value = value),
    );
  }
}
