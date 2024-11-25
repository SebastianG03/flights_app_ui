import 'package:flutter/material.dart';

import '../../custom/buttons/custom_dropdown.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        children: [
          CustomDropdownButton(
            hint: '1 Traveler',
            items: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
          ),
          SizedBox(
            width: 5,
          ),
          CustomDropdownButton(
            hint: 'Economic',
            items: ['Economic', 'Premium Economic', 'Business', 'First'],
          ),
          SizedBox(
            width: 5,
          ),
          CustomDropdownButton(
            hint: 'Baggage',
            items: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
          ),
        ],
      ),
    );
  }
}
