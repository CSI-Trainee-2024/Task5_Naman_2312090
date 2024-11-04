import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:coffee_app/utils/constants/colors.dart';

import 'package:flutter/material.dart';

class Product2 extends StatefulWidget {
  final String image2;

  Product2({required this.image2});

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: 'ImageInfo2',
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        widget.image2,
                        fit: BoxFit.cover,
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
