import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/presentation/screens/home/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardListView extends ConsumerWidget {
  final String title;
  final List<CardItem> items;
  final double height;
  const CardListView(
      {super.key, required this.title, required this.items, this.height = 155});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: title.isNotEmpty,
          child: Text(
            title,
            style: AppTheme.titleTextStyle.copyWith(fontSize: 15),
          ),
        ),
        Visibility(
            visible: title.isNotEmpty, child: const SizedBox(height: 15)),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: height,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border:
                  Border.all(color: Colors.grey.withOpacity(0.5), width: 1)),
          child: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (context, index) => const Divider(
              indent: 15,
              endIndent: 15,
            ),
            itemBuilder: (context, index) => ListTile(
              title: Text(items[index].label),
              subtitle: items[index].description.isNotEmpty
                  ? Text(
                      items[index].description,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  : null,
              trailing: items[index].leadingWidget ??
                  IconButton(
                    icon: const Icon(Icons.navigate_next_rounded),
                    onPressed: () {},
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
