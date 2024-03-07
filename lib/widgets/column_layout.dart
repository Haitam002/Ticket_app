import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: alignment,
              children: [
                Text(
                  firstText,
                  style: isColor == null
                      ? Styles.haidLineStyle3.copyWith(color: Colors.white)
                      : Styles.haidLineStyle3,
                ),
                const Gap(4),
                Text(
                  secondText,
                  style: isColor == null
                      ? Styles.haidLineStyle4.copyWith(color: Colors.white)
                      : Styles.haidLineStyle4,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
