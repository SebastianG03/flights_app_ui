import 'package:flights_app/layers/presentation/widgets/shared/bottom_bar.dart';
import 'package:flutter/material.dart';

class TemplateHomeScreen extends StatelessWidget {
  final int initialIndex;
  final Widget child;
  const TemplateHomeScreen(
      {super.key, required this.child, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: initialIndex,
      ),
      body: SafeArea(
        top: true,
        child: child,
      ),
    );
  }
}
