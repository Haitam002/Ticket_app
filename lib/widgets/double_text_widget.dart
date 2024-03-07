import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.haidLineStyle2,
        ),
        //inkwell widget make the text interactive
        InkWell(
          onTap: () {
            //  print("you are taped");
          },
          child: Text(
            smallText,
            style:
                //the widget copywith give me the possibility to change the color of the text color who is already declared
                Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
