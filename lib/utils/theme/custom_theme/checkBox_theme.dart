import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class checkBoxTheme {
  checkBoxTheme._();

  static CheckboxThemeData lightCheckBox = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      checkColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primaryColor;
          } else {
            return colors.secondaryColor;
          }
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return colors.mainColor;
          } else {
            return colors.primaryColor;
          }
        },
      ));
}
