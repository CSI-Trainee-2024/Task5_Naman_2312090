import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class Product2 extends StatefulWidget {
  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Text("Latte", style: textTheme.lightTextTheme.headlineMedium));
  }
}
