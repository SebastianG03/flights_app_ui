import 'package:flights_app/layers/domain/entities/items_data.dart';
import 'package:flights_app/layers/presentation/widgets/custom/cards/cards.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/custom/inputs/inputs.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UserCard(),
          const SizedBox(height: 10),
          CardListView(
            title: 'Personal Details',
            items: personalDetails,
            height: 160,
          ),
          const SizedBox(height: 10),
          CardListView(
            title: 'Settings',
            items: settingsList,
            height: 315,
          ),
          const SizedBox(height: 10),
          CardListView(
            title: '',
            items: [
              CardItem(
                  label: 'Sign Out',
                  leadingWidget: const Icon(Icons.logout_outlined))
            ],
            height: 50,
          )
        ],
      ),
    );
  }

  final List<CardItem> personalDetails = [
    CardItem(
        label: 'Account',
        description: 'Manage your account name, email and passkeys'),
    CardItem(
        label: 'Preferences', description: 'Manage your search preferences'),
  ];

  final List<CardItem> settingsList = [
    CardItem(label: 'Notifications'),
    CardItem(
        label: 'Language',
        leadingWidget: TextButton(
            onPressed: () {},
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
              ),
            ))),
    CardItem(
        label: 'Currency',
        leadingWidget: TextButton(
            onPressed: () {},
            child: Text(
              'USD',
              style: TextStyle(color: Colors.black.withOpacity(0.8)),
            ))),
    CardItem(label: 'Help'),
    CardItem(label: 'Dark Mode', leadingWidget: const CustomSwitch()),
  ];
}

class CardItem extends ItemData {
  final Widget? leadingWidget;
  CardItem({required super.label, super.description, this.leadingWidget});
}
