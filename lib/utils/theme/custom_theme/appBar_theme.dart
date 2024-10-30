import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class appBarTheme {
  appBarTheme._();

  static const lightAppBArTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: colors.transparentColor,
    surfaceTintColor: colors.transparentColor,
    iconTheme: IconThemeData(color: colors.mainColor,size: 24),
    titleTextStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: colors.secondaryColor)
  );

   static const darkAppBArTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: colors.transparentColor,
    surfaceTintColor: colors.transparentColor,
    iconTheme: IconThemeData(color: colors.mainColor,size: 24),
    titleTextStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: colors.primaryColor)
  );
}
