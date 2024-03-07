import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, this.isColor, required this.section, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        /* i get the size of the secreen :  print(
                                  "Text width is : ${constraints.constrainWidth()}");*/
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                (constraints.constrainWidth() / section).floor(),
                /* here whre i define the decoration of dashes */
                (index) => Text(
                      "-",
                      style: TextStyle(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade300),
                    )));
      },
    );
  }
}
