import 'package:flutter/material.dart';

import '../../custom/inputs/search_form.medium.dart';

class SearchSpace extends StatefulWidget {
  const SearchSpace({super.key});

  @override
  State<SearchSpace> createState() => _SearchSpaceState();
}

class _SearchSpaceState extends State<SearchSpace> {
  final TextEditingController landingController = TextEditingController();
  final TextEditingController departureController = TextEditingController();

  String landingValue = '';
  String departureValue = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchFormMedium(
                  prefixIcon: Icons.flight_takeoff_rounded,
                  helperText: 'Departure',
                  controller: departureController,
                ),
                const SizedBox(height: 5),
                SearchFormMedium(
                  prefixIcon: Icons.flight_land,
                  helperText: 'Landing',
                  controller: landingController,
                ),
              ],
            ),
            Positioned(
              right: 30,
              bottom: 30,
              top: 30,
              child: IconButton.filled(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(Icons.swap_vert_rounded),
                color: Colors.black,
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  minimumSize: const WidgetStatePropertyAll(Size(25, 25)),
                  maximumSize: const WidgetStatePropertyAll(Size(40, 40)),
                  side: WidgetStatePropertyAll(
                      BorderSide(color: Colors.grey.shade400)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
