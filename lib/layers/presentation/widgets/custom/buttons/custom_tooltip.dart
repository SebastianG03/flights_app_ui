import 'package:flights_app/layers/presentation/widgets/custom/shape/box_border.dart';
import 'package:flutter/material.dart';

class CustomTooltip extends StatefulWidget {
  const CustomTooltip({super.key});

  @override
  State<CustomTooltip> createState() => _CustomTooltipState();
}

class _CustomTooltipState extends State<CustomTooltip> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          const ShapeDecoration(shape: CustomBoxBorder(usePadding: true)),
      child: Material(
        shape: const CustomBoxBorder(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 215, 78, 103),
                ),
                child: const Icon(
                  Icons.hotel,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Hotel Lorem Ipsum',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}
