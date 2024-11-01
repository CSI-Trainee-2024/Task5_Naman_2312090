import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bottomTheme {
  bottomTheme._();

  static const lightBottomTheme = BottomNavigationBarThemeData(
    backgroundColor: colors.transparentColor,
      unselectedIconTheme: IconThemeData(
        size: 30,
      ),
      selectedIconTheme: IconThemeData(size: 40, color: colors.mainColor),
      selectedLabelStyle: TextStyle(color: colors.mainColor),
      type: BottomNavigationBarType.fixed,
      elevation: 0);
}
