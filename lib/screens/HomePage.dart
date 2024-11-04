import 'package:coffee_app/subScreens/coffee.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
  //CoffeeSelection coffeeSelection = CoffeeSelection();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          "Find the best \nCoffee to your taste",
          style: textTheme.lightTextTheme.headlineLarge,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
         // onChanged: (value) => CoffeeSelection.new.runFilter(value),
          decoration: InputDecoration(
              hintText: "Find your coffee...",
              prefixIcon: Icon(Icons.search),
              hintStyle: textTheme.lightTextTheme.bodyMedium,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 2)),
              enabled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(color: colors.mainColor, width: 2))),
        ),
        CoffeeSelection(),
      ],
    );
  }
}
