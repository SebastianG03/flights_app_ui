import 'package:flights_app/config/routes/app_routes.dart';
import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBottomBar extends ConsumerStatefulWidget {
  final int selectedIndex;
  const CustomBottomBar({super.key, this.selectedIndex = 0});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomBottomBarState();
}

class _CustomBottomBarState extends ConsumerState<CustomBottomBar> {
  int selected = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      selected = widget.selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = _getItems();
    return BottomNavigationBar(
      items: list
          .map((e) => BottomNavigationBarItem(
              icon: Icon(e.icon),
              label: e.name,
              activeIcon: Icon(e.icon, color: AppTheme.selected)))
          .toList(),
      onTap: (index) => selectItem(index),
      currentIndex: selected,
      elevation: 1,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    );
  }

  void selectItem(int index) {
    final list = _getItems();
    debugPrint('Selected: $index');
    context.replaceNamed(list[index].routeName);
    setState(() {
      selected = index;
    });
  }

  List<BottomBarItem> _getItems() {
    return [
      BottomBarItem(
          name: 'Home', icon: Icons.home, routeName: AppRoutes.homePage),
      BottomBarItem(
          name: 'Explore',
          icon: Icons.explore,
          routeName: AppRoutes.explorePage),
      BottomBarItem(
          name: 'Profile',
          icon: Icons.account_circle_rounded,
          routeName: AppRoutes.profilePage),
    ];
  }
}

class BottomBarItem {
  String name;
  IconData icon;
  String routeName;

  BottomBarItem(
      {required this.name, required this.icon, required this.routeName});
}
