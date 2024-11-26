import 'package:flights_app/layers/presentation/widgets/custom/modals/bottom_modal.dart';
import 'package:flutter/material.dart';

import '../../custom/buttons/custom_dropdown.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        children: [
          CustomModalButton(
            hint: '1 Traveler',
            onTap: () {
              BottomModalSheet.show(
                  context,
                  "Cabin Class",
                  Container(
                    height: 200,
                  ));
            },
          ),
          const SizedBox(
            width: 5,
          ),
          CustomModalButton(
            hint: 'Economic',
            onTap: () {},
          ),
          const SizedBox(
            width: 5,
          ),
          CustomModalButton(
            hint: 'Baggage',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
