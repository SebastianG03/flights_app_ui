import 'package:flights_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BottomModalSheet {
  static void show(BuildContext context, String title, Widget content) {
    Scaffold.of(context).showBottomSheet((context) {
      return BottomSheetContainer(title: title, content: content);
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
  const BottomSheetContainer(
      {super.key, required this.title, required this.content});

  void _onTapDownDetails(TapDownDetails details) {
    final x = details.globalPosition.dx;
    final y = details.globalPosition.dy;
    debugPrint("Position details: ${details.localPosition}");
    debugPrint("Tap Down: ${x.toString()}, ${y.toString()}");
  }

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
        height: MediaQuery.of(context).size.height * 0.65,
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
            content
          ],
        ),
      ),
    );
  }
}
