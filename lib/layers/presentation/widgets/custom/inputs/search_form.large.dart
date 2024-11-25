import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/presentation/widgets/custom/buttons/clear_icon.dart';
import 'package:flutter/material.dart';

class SearchFormLarge extends StatefulWidget {
  const SearchFormLarge({super.key});

  @override
  State<SearchFormLarge> createState() => _SearchFormLargeState();
}

class _SearchFormLargeState extends State<SearchFormLarge> {
  String search = '';
  final TextEditingController controller = TextEditingController();

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
            hintText: "Search hotels, train, flights, etc...",
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
                  : const Icon(
                      Icons.search,
                    ),
            )),
        onChanged: (value) => setState(() => search = value),
        onFieldSubmitted: (value) {},
      ),
    );
  }
}
