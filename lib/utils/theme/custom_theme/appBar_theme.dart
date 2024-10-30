import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class appBarTheme {
  appBarTheme._();

  static const lightAppBArTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Color(0xff967259),size: 24),
    titleTextStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black)
  );

   static const darkAppBArTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Color(0xff967259),size: 24),
    titleTextStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white)
  );
}
