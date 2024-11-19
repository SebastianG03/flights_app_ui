import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      // decoration:
      // const BoxDecoration(color: Color.fromARGB(255, 249, 250, 206)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 190, 73, 73),
                radius: 40,
                child: Text(
                  'J',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.titleTextStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    'doe-john@gmail.com',
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.titleTextStyle
                        .copyWith(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  Text(
                    'Quito, Ecuador (UIO)',
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.titleTextStyle
                        .copyWith(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Edit',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.blueAccent),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
