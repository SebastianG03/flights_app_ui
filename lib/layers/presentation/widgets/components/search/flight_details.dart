import 'package:flights_app/layers/domain/entities/selection_modes.dart';
import 'package:flights_app/layers/presentation/widgets/custom/inputs/selection_button.dart';
import 'package:flights_app/layers/presentation/widgets/custom/modals/bottom_modal.dart';
import 'package:flights_app/layers/presentation/widgets/custom/tiles/general_list_view.dart';
import 'package:flutter/material.dart';

import '../../custom/buttons/custom_dropdown.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final travelersOptions = [
      'Adults',
      'Students',
      'Seniors',
      'Youths',
      'Children',
      'Toddlers'
    ];
    final travelersHints = [
      '18-64',
      'over 18',
      'over 65',
      '12-17',
      '2-11',
      'under 2',
    ];
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        children: [
          CustomModalButton(
            hint: '1 Traveler',
            onTap: () {
              BottomModalSheet.show(
                  context: context,
                  isSubmitted: true,
                  height: MediaQuery.of(context).size.height * 0.75,
                  title: "Cabin Class",
                  content: GeneralListView(
                    itemCount: travelersOptions.length,
                    itemBuilder: (context, index) => SelectionButton(
                      label: travelersOptions[index],
                      hint: travelersHints[index],
                      selectionMode: SelectionModes.counter,
                    ),
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
