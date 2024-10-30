import 'package:flutter/material.dart';

class chipTheme {
  chipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: Colors.transparent,
    selectedColor: Color(0xff967259),
    showCheckmark: false,
    labelStyle: TextStyle(color: Colors.black),
    padding: EdgeInsets.all(12)
  );
}
