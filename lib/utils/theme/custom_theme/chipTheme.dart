import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class chipTheme {
  chipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: colors.transparentColor,
    selectedColor: colors.mainColor,
    showCheckmark: false,
    labelStyle: TextStyle(color: colors.secondaryColor),
    padding: EdgeInsets.all(12)
  );
}
