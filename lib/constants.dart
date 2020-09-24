import 'package:flutter/material.dart';

abstract class Constants{

  static Color get secundaryColor => Color.fromRGBO(51, 51, 51, 1);
  static Color get headerColor => Color.fromRGBO(30, 30, 30, 1);
  static Color get backgroundCard => Color.fromRGBO(36, 36, 31, 1);
  static Color get fontColor => Color.fromRGBO(244, 244, 244, 1);
  static Color get titleCourseColor => Color.fromRGBO(237, 20, 91, 0.9);
  static Color get fiapColor1 => Color.fromRGBO(255, 51, 102, 1);

  static double percentHeight(BuildContext context, double percent){
    return MediaQuery.of(context).size.height * (percent / 100);
  }

  static double percentWidth(BuildContext context, double percent){
    return MediaQuery.of(context).size.width * (percent / 100);
  }
   
}