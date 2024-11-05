import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: textTheme.lightTextTheme.bodyLarge,
        ),
        centerTitle: true,
        actions: [Icon(Icons.delete_outlined)],
      ),
    );
  }
}
