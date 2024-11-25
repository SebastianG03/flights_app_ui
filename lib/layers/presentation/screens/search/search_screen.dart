import 'package:flights_app/layers/presentation/widgets/custom/buttons/large_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/components/search/search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchSpace(),
          FlightDetails(),
          LargeButton(
            text: 'Buscar',
            color: Color.fromARGB(255, 91, 149, 207),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
