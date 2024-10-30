import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class elevatedButtonTheme {
  elevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: colors.primaryColor,
          backgroundColor: colors.mainColor,
          disabledBackgroundColor: colors.geryColor,
          disabledForegroundColor: colors.geryColor,
          padding: EdgeInsets.symmetric(vertical: 14),
          textStyle: textTheme.lightTextTheme.titleSmall,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));

  static ElevatedButtonThemeData darkElevatedButton = ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: colors.secondaryColor,
          backgroundColor: colors.mainColor,
          disabledBackgroundColor: colors.geryColor,
          disabledForegroundColor: colors.geryColor,
          padding: EdgeInsets.symmetric(vertical: 14),
          textStyle: textTheme.lightTextTheme.titleSmall,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
  );
}
