import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flights_app/config/theme/app_theme.dart';

import '../custom/inputs/inputs.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const shapeBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(50),
    ));
    return SliverAppBar(
      elevation: 1,
      collapsedHeight: 200,
      backgroundColor: Colors.transparent,
      shape: shapeBorder,
      leading: const Visibility(visible: false, child: SizedBox()),
      title: Text('InFlight',
          style: AppTheme.titleTextStyle.copyWith(color: Colors.white)),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(top: 2),
        title: const SearchForm(),
        background: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcOver),
              child: Image.asset(
                'assets/img/images 6.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        collapseMode: CollapseMode.pin,
        stretchModes: const [
          StretchMode.fadeTitle,
          StretchMode.zoomBackground,
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
