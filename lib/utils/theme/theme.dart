import 'package:coffee_app/utils/theme/custom_theme/appBar_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/bottomSheet_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/checkBox_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/chipTheme.dart';
import 'package:coffee_app/utils/theme/custom_theme/elevatedButton_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme.lightTextTheme,
    primaryColor: const Color(0xff967259),
    elevatedButtonTheme: elevatedButtonTheme.lightElevatedButton,
    checkboxTheme: checkBoxTheme.lightCheckBox,
    chipTheme: chipTheme.lightChipTheme,
    bottomSheetTheme: bottomSheetTheme.lightBottomSheet,
    appBarTheme: appBarTheme.lightAppBArTheme,
    //inputDecorationTheme:
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: textTheme.darkTextTheme,
    primaryColor: const Color(0xff967259),
    elevatedButtonTheme: elevatedButtonTheme.darkElevatedButton
  );

}
