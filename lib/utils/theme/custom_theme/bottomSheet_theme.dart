import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class bottomSheetTheme {
  bottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheet = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: colors.splashColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}
