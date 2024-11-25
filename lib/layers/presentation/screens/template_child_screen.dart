import 'package:flutter/material.dart';

class TemplateChildScreen extends StatelessWidget {
  final Widget child;
  const TemplateChildScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: child,
    ));
  }
}
