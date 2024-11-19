import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardModel extends StatelessWidget {
  final String cardTitle;
  final String cardContent;
  final String imageUrl;
  final VoidCallback onPressed;

  const CardModel(
      {super.key,
      required this.cardTitle,
      required this.cardContent,
      this.imageUrl = '',
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        shadowColor: Colors.black.withOpacity(0.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.maxFinite,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Text(cardTitle.trim(), style: AppTheme.cardTitleTextStyle),
                  const SizedBox(height: 5),
                  Text(cardContent.trim(),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.cardContentTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
