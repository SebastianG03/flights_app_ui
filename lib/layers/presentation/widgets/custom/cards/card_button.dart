import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/domain/entities/items_data.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardButton extends ConsumerStatefulWidget {
  final ItemData item;
  const CardButton({super.key, required this.item});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CardButtonState();
}

class _CardButtonState extends ConsumerState<CardButton> {
  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 255, 134, 134), width: 1.3),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 2,
              blurStyle: BlurStyle.normal,
              offset: const Offset(1, 5)),
        ],
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: const LinearGradient(
          colors: [
            AppTheme.primary,
            AppTheme.secondary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 1],
          tileMode: TileMode.decal,
        ));

    return GestureDetector(
      onTap: () => debugPrint("Button tapped ${widget.item.label}"),
      child: DecoratedBox(
        decoration: decoration,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  widget.item.icon,
                  color: const Color.fromARGB(255, 245, 255, 229),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  widget.item.label,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 245, 255, 229),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
