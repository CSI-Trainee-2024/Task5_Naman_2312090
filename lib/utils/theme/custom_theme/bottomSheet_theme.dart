import 'package:flutter/material.dart';

class bottomSheetTheme {
  bottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheet = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Color(0xffECE0D1),
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}
