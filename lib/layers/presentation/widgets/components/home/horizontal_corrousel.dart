import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/domain/entities/items_data.dart';
import 'package:flights_app/layers/presentation/widgets/custom/cards/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalCorrousel extends ConsumerStatefulWidget {
  final String title;
  final String subtitle;
  final List<ItemData> items;
  const HorizontalCorrousel(
      {super.key,
      required this.items,
      required this.title,
      required this.subtitle});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HorizontalCorrouselState();
}

class _HorizontalCorrouselState extends ConsumerState<HorizontalCorrousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(widget.title,
                style: AppTheme.titleTextStyle.copyWith(fontSize: 16)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(widget.subtitle,
                style: AppTheme.normalTextStyle.copyWith(fontSize: 14)),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  final item = widget.items[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 300,
                    child: CardModel(
                      cardTitle: item.label,
                      cardContent: item.description,
                      imageUrl: item.imageUrl,
                      onPressed: () {},
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
