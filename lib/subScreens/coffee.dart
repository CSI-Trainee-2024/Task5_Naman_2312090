import 'package:coffee_app/subScreens/product1.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class coffee extends StatefulWidget {
  @override
  State<coffee> createState() => _coffeeState();
}

class _coffeeState extends State<coffee> {
  int selectCoffee = 0;
  List coffee = ["Espresso", "Latte", "Cappuccino", "Cafetiere"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffee.length,
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () {
              setState(() {
                selectCoffee = index;
                if (selectCoffee == 0) {
                  print("Espreso");
                }
              });
            },
            child: Text(
              coffee[index],
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: selectCoffee == index
                      ? colors.mainColor
                      : colors.secondaryColor),
            ),
          );
        },
      ),
    );
  }
}
