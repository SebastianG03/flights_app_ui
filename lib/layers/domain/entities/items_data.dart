import 'package:flutter/material.dart';

class ItemData {
  final String label;
  final String imageUrl;
  final String description;
  final IconData icon;
  final String routeName;

  ItemData({
    required this.label,
    this.imageUrl = '',
    this.description = '',
    this.icon = Icons.home,
    this.routeName = '',
  });
}
