import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class textTheme {
  textTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: colors.secondaryColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: colors.secondaryColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: colors.secondaryColor),

    titleLarge: const TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w700,color: colors.primaryColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.normal,color: colors.primaryColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,color: colors.primaryColor),

    bodyLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color:colors.secondaryColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: colors.secondaryColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: colors.secondaryColor.withOpacity(0.7))
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: colors.primaryColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: colors.primaryColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: colors.primaryColor),

    titleLarge: const TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w700,color: colors.secondaryColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,color: colors.secondaryColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w700,color: colors.secondaryColor),

    bodyLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: colors.primaryColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: colors.primaryColor),
    bodySmall: const TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.w400,color: colors.primaryColor.withOpacity(0.7))
  );
}
