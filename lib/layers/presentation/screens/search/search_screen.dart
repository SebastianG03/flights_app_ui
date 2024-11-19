import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchSpace(),
            TextButton(onPressed: () {}, child: const Text('Buttom')),
          ],
        ),
      ),
    );
  }
}

class SearchSpace extends StatelessWidget {
  const SearchSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.flight_takeoff_outlined),
            // suffixIcon:
          ),
        ),
        TextFormField(),
        TextButton(onPressed: () {}, child: Text('Buscar'))
      ],
    );
  }
}
