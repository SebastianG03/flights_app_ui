import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flights_app/layers/presentation/widgets/custom/buttons/large_button.dart';
import 'package:flutter/material.dart';

class BottomModalSheet {
  static void show(
      {required BuildContext context,
      required String title,
      required Widget content,
      required double height,
      bool isSubmitted = false,
      VoidCallback? onSubmitted}) {
    Scaffold.of(context).showBottomSheet(enableDrag: true, (context) {
      return BottomSheetContainer(
          title: title,
          content: content,
          onSubmitted: onSubmitted,
          isSubmitted: isSubmitted,
          height: height);
    });
  }
}

class _BottomModalSheetHeader extends StatelessWidget {
  final String title;
  const _BottomModalSheetHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTheme.cardTitleTextStyle.copyWith(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.w800),
          ),
          const Spacer(),
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 16),
              )),
        ],
      ),
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  final String title;
  final Widget content;
  final VoidCallback? onSubmitted;
  final bool isSubmitted;
  final double height;
  const BottomSheetContainer(
      {super.key,
      required this.title,
      required this.content,
      required this.isSubmitted,
      required this.height,
      this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.transparent, boxShadow: [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 10,
          offset: Offset(1, 1),
          spreadRadius: 1000000,
        )
      ]),
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(15)),
            color: Colors.white),
        child: Column(
          children: [
            _BottomModalSheetHeader(
              title: title,
            ),
            content,
            if (isSubmitted) ...[
              LargeButton(
                text: 'Apply',
                color: Colors.blueGrey,
                hasShadow: false,
                textColor: Colors.white,
                onTap: onSubmitted,
              )
            ]
          ],
        ),
      ),
    );
  }
}
