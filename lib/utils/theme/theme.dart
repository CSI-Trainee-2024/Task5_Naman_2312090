import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/appBar_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/bottomSheet_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/bottom_theme.dart';
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
    scaffoldBackgroundColor: colors.primaryColor,
    textTheme: textTheme.lightTextTheme,
    primaryColor: colors.mainColor,
    elevatedButtonTheme: elevatedButtonTheme.lightElevatedButton,
    checkboxTheme: checkBoxTheme.lightCheckBox,
    chipTheme: chipTheme.lightChipTheme,
    bottomSheetTheme: bottomSheetTheme.lightBottomSheet,
    appBarTheme: appBarTheme.lightAppBArTheme,
    bottomNavigationBarTheme:bottomTheme.lightBottomTheme, 
    //inputDecorationTheme:
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: colors.secondaryColor,
    textTheme: textTheme.darkTextTheme,
    primaryColor: colors.mainColor,
    elevatedButtonTheme: elevatedButtonTheme.darkElevatedButton
  );

}
