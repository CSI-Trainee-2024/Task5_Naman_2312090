import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  //final int itemCount;
  //cartPage({required this.itemCount});

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
          actions: [const Icon(Icons.delete_outlined)],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Item(0)",
                style: textTheme.lightTextTheme.headlineLarge,
              ),
            )
          ],
        ));
  }
}
