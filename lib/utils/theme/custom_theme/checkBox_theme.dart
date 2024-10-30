import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class checkBoxTheme {
  checkBoxTheme._();

  static CheckboxThemeData lightCheckBox = CheckboxThemeData(
      shape: CircleBorder(eccentricity: 3),
      checkColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          } else {
            return Colors.black;
          }
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return const Color(0xff967259);
          } else {
            return Colors.white;
          }
        },
      ));
}
