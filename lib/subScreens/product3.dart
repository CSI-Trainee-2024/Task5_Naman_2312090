import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class Product3 extends StatefulWidget {
  @override
  State<Product3> createState() => _Product3State();
}

class _Product3State extends State<Product3> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child:
            Text("Cappuccino", style: textTheme.lightTextTheme.headlineMedium));
  }
}

