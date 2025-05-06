import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/presentation/widgets/custom/buttons/clear_icon.dart';
import 'package:flutter/material.dart';

enum _SearchFormSize { large, medium }

class SearchForm extends Widget {
  final IconData prefixIcon;
  final String helperText;
  final TextEditingController? controller;
  // ignore: library_private_types_in_public_api
  final _SearchFormSize size;

  const SearchForm.large({
    super.key,
    required this.prefixIcon,
    this.helperText = '',
    this.controller,
  }) : size = _SearchFormSize.large;

  const SearchForm.medium({
    super.key,
    required this.prefixIcon,
    this.helperText = '',
    this.controller,
  }) : size = _SearchFormSize.medium;

  @override
  Element createElement() {
    if (size == _SearchFormSize.large) {
      return _SearchFormLarge(
        prefixIcon: prefixIcon,
        controller: controller,
        helperText: helperText,
      ).createElement();
    } else {
      return _SearchFormMedium(
        prefixIcon: prefixIcon,
        controller: controller,
        helperText: helperText,
      ).createElement();
    }
  }
}

class _SearchFormLarge extends StatefulWidget {
  final TextEditingController? controller;
  final String helperText;
  final IconData prefixIcon;
  const _SearchFormLarge(
      {required this.prefixIcon, this.controller, this.helperText = ''});

  @override
  State<_SearchFormLarge> createState() => _SearchFormLargeState();
}

class _SearchFormLargeState extends State<_SearchFormLarge> {
  String search = '';
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

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide:
            const BorderSide(color: Color.fromARGB(255, 233, 233, 233)));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: TextFormField(
        autocorrect: true,
        controller: controller,
        cursorHeight: 16.0,
        enableSuggestions: true,
        maxLines: 1,
        style: AppTheme.normalTextStyle.copyWith(fontSize: 16),
        decoration: InputDecoration(
            border: border,
            hintText: widget.helperText,
            hintStyle: AppTheme.smallTextStyle
                .copyWith(color: const Color.fromARGB(255, 81, 81, 81)),
            fillColor: const Color.fromARGB(167, 240, 241, 241),
            filled: true,
            enabledBorder: border,
            focusedBorder: border.copyWith(
                borderSide:
                    const BorderSide(color: AppTheme.focusOutlineBorder)),
            suffixIcon: GestureDetector(
              onTap: () {
                if (search.isNotEmpty) {
                  setState(() => search = '');
                  controller.clear();
                }
              },
              child: search.isNotEmpty
                  ? ClearIcon(
                      backgroundColor: const Color.fromARGB(255, 135, 128, 128)
                          .withOpacity(0.9),
                      iconColor: Colors.white.withOpacity(0.3))
                  : Icon(
                      widget.prefixIcon,
                    ),
            )),
        onChanged: (value) => setState(() => search = value),
        onFieldSubmitted: (value) {},
      ),
    );
  }
}

class _SearchFormMedium extends StatefulWidget {
  final IconData prefixIcon;
  final String helperText;
  final TextEditingController? controller;
  const _SearchFormMedium(
      {required this.prefixIcon, this.helperText = '', this.controller});
  @override
  State<_SearchFormMedium> createState() => _SearchFormMediumState();
}

class _SearchFormMediumState extends State<_SearchFormMedium> {
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
