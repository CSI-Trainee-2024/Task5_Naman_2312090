import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class Product4 extends StatefulWidget {
  @override
  State<Product4> createState() => _Product4State();
}

class _Product4State extends State<Product4> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child:
            Text("Cafetiere", style: textTheme.lightTextTheme.headlineMedium));
  }
}
