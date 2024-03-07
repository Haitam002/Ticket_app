import 'package:flutter/material.dart';

//this class is used  to reference all the colors and texts styles in the app
Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle haidLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle haidLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle haidLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle haidLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
