import 'package:flutter/material.dart';

class GeneralListView extends StatelessWidget {
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  const GeneralListView(
      {super.key, required this.itemBuilder, this.itemCount = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
