import 'package:flutter/material.dart';

class ColorConstants{

  static const Color accentColor = Color(0xff7C9542);
  static const Color textColor = Color(0xff4E4D4D);
  static const Color borderColor = Color(0xffB8B1B1);
  static const Color hintColor = Color(0xff717171);

  static const Color black = Colors.black;
  static const Color white = Colors.white;

  static const List<Color> gradientColors = [
    Color(0xff7C9542),
    Color(0xffB3D236),
  ];

}

class MyColor extends MaterialStateColor {
  static const int _defaultColor = 0xff7C9542;
  static const int _pressedColor = 0xff7C9542;

  const MyColor() : super(_defaultColor);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}