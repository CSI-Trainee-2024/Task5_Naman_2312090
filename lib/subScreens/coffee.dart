import 'package:flutter/material.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';

class CoffeeSelection extends StatefulWidget {
  @override
  State<CoffeeSelection> createState() => _CoffeeSelectionState();
}

class _CoffeeSelectionState extends State<CoffeeSelection> {
  Map<String, String>? selectedCoffee;

  final List<Map<String, String>> coffeeData = [
    {
      "name": "Espresso",
      "description1": "Bold Flavor, Pure Energy.",
      "description2": "Richness in Every Sip.",
      "description3": "Crafted for Coffee Lovers.",
      "description4": "Instant Boost, Lasting Flavor.",
      "description5": "Elevate Your Coffee Experience.",
      "description6": "Espresso: Your Daily Ritual.",
      "image": "assets/images/espresso.png",
    },
    {
      "name": "Latte",
      "description1": "Smooth and creamy Delight.",
      "description2": "Your Cozy Coffee Companion.",
      "description3": "A Warm Hug in a Cup.",
      "description4": "Comfort in Every Creamy Sip",
      "description5": "Elevate Your Coffee Ritual.",
      "description6": "Indulge in Every Sip.",
      "image": "assets/images/latte.png",
    },
    {
      "name": "Cappuccino",
      "description1": "Cappuccino: Foam Your Day.",
      "description2": "Sip, Smile, Repeat.",
      "description3": "Awaken Your Senses Today.",
      "description4": "Indulge in Creamy Perfection.",
      "description5": "Warmth in Every Mug.",
      "description6": "Savor the Creamy Dream.",
      "image": "assets/images/cappuccino.png",
    },
    {
      "name": "Cafetiere",
      "description1": "Rich, full-bodied coffee.",
      "description2": "Savor the French Press Magic.",
      "description3": "Awaken Your Senses, Press On.",
      "description4": "Press for Coffee, Press for Life.",
      "description5": "Experience Coffee, Unfiltered Joy.",
      "description6": "Elevate Your Coffee Ritual.",
      "image": "assets/images/cafetiere.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    selectedCoffee = coffeeData[0];
  }

  void CoffeeSelected(int index) {
    setState(() {
      selectedCoffee = coffeeData[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoffeeSelection(),
        SizedBox(height: 20),
        if (selectedCoffee != null) CoffeeDetails(),
      ],
    );
  }

  Widget CoffeeSelection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffeeData.length,
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () => CoffeeSelected(index),
            child: Text(
              coffeeData[index]["name"]!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: selectedCoffee != null &&
                        selectedCoffee!["name"] == coffeeData[index]["name"]
                    ? colors.mainColor
                    : colors.secondaryColor,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget CoffeeDetails() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedCoffee!["name"]!,
                    style: textTheme.lightTextTheme.headlineMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    selectedCoffee!["description1"]!,
                    style: textTheme.lightTextTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedCoffee!["name"]!,
                    style: textTheme.lightTextTheme.headlineMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    selectedCoffee!["description2"]!,
                    style: textTheme.lightTextTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedCoffee!["name"]!,
                    style: textTheme.lightTextTheme.headlineMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    selectedCoffee!["description3"]!,
                    style: textTheme.lightTextTheme.bodySmall,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
