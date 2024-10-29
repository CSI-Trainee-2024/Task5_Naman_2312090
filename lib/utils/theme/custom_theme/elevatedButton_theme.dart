import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class elevatedButtonTheme {
  elevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff967259),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 14),
          textStyle: textTheme.lightTextTheme.titleSmall,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));

  static ElevatedButtonThemeData darkElevatedButton = ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: const Color(0xff967259),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          padding: EdgeInsets.symmetric(vertical: 14),
          textStyle: textTheme.lightTextTheme.titleSmall,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
  );
}
