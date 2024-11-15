import 'package:coffee_app/DetailPage/product1.dart';
import 'package:coffee_app/DetailPage/product2.dart';
import 'package:coffee_app/DetailPage/product3.dart';
import 'package:coffee_app/DetailPage/product4.dart';
import 'package:coffee_app/DetailPage/product5.dart';
import 'package:coffee_app/DetailPage/product6.dart';
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
      "price": "\$4.20",
      "description1": "Bold Flavor, Pure Energy.",
      "description2": "Richness in Every Sip you drink.",
      "description3": "Crafted for Coffee Lovers.",
      "description4": "Instant Boost, Lasting Flavor.",
      "description5": "Elevate Your Coffee Experience.",
      "description6": "Espresso: Your Daily Ritual.",
      "image1": "assets/images/espresso1.png",
      "image2": "assets/images/espresso2.png",
      "image3": "assets/images/espresso3.png",
      "image4": "assets/images/espresso4.png",
      "image5": "assets/images/espresso5.png",
      "image6": "assets/images/espresso6.png",
    },
    {
      "name": "Latte",
      "price": "\$6.40",
      "description1": "Smooth and creamy Delight.",
      "description2": "Your Cozy Coffee Companion.",
      "description3": "A Warm Hug in a Cup.",
      "description4": "Comfort in Every Creamy Sip",
      "description5": "Elevate Your Coffee Ritual.",
      "description6": "Indulge in Every Sip.",
      "image1": "assets/images/latte1.png",
      "image2": "assets/images/latte2.png",
      "image3": "assets/images/latte3.png",
      "image4": "assets/images/latte4.png",
      "image5": "assets/images/latte5.png",
      "image6": "assets/images/latte6.png",
    },
    {
      "name": "Cappuccino",
      "price": "\$7.00",
      "description1": "Cappuccino: Foam Your Day.",
      "description2": "Sip, Smile, Repeat again.",
      "description3": "Awaken Your Senses Today.",
      "description4": "Indulge in Creamy Perfection.",
      "description5": "Warmth in Every Mug.",
      "description6": "Savor the Creamy Dream.",
      "image1": "assets/images/capp1.png",
      "image2": "assets/images/capp2.png",
      "image3": "assets/images/capp3.png",
      "image4": "assets/images/capp4.png",
      "image5": "assets/images/capp5.png",
      "image6": "assets/images/capp6.png",
    },
    {
      "name": "Cafetiere",
      "price": "\$5.70",
      "description1": "Rich, full-bodied coffee.",
      "description2": "Savor the French Press Magic.",
      "description3": "Awaken Your Senses, Press On.",
      "description4": "Press for Coffee, Press for Life.",
      "description5": "Experience Coffee, Unfiltered Joy.",
      "description6": "Elevate Your Coffee Ritual.",
      "image1": "assets/images/cafe1.png",
      "image2": "assets/images/cafe2.png",
      "image3": "assets/images/cafe3.png",
      "image4": "assets/images/cafe4.png",
      "image5": "assets/images/cafe5.png",
      "image6": "assets/images/cafe6.png",
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CoffeeSelection(),
          if (selectedCoffee != null) CoffeeDetails(),
        ],
      ),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 1.07,
          child: Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.58),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product1(
                                  image1: selectedCoffee!["image1"]!,
                                  name1: selectedCoffee!["name"]!,
                                  price1: selectedCoffee!["price"]!,
                                )));
                  },
                  child: Hero(
                    tag: ImageInfo,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          selectedCoffee!["image1"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description1"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Product2(
                            image2: selectedCoffee!["image2"]!,
                            name2: selectedCoffee!["name"]!,
                            price2: selectedCoffee!["price"]!,
                          ),
                        ));
                  },
                  child: Hero(
                    tag: 'ImageInfo2',
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          selectedCoffee!["image2"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description2"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product3(
                                  image3: selectedCoffee!["image3"]!,
                                  name3: selectedCoffee!["name"]!,
                                  price3: selectedCoffee!["price"]!,
                                )));
                  },
                  child: Hero(
                    tag: 'ImageInfo3',
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          selectedCoffee!["image3"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description3"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product4(
                                  image4: selectedCoffee!["image4"]!,
                                  name4: selectedCoffee!["name"]!,
                                  price4: selectedCoffee!["price"]!,
                                )));
                  },
                  child: Hero(
                    tag: 'ImageInfo4',
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(selectedCoffee!["image4"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description4"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product5(
                                  image5: selectedCoffee!["image5"]!,
                                  name5: selectedCoffee!["name"]!,
                                  price5: selectedCoffee!["price"]!,
                                )));
                  },
                  child: Hero(
                    tag: 'ImageInfo5',
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(selectedCoffee!["image5"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description5"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product6(
                                  image6: selectedCoffee!["image6"]!,
                                  name6: selectedCoffee!["name"]!,
                                  price6: selectedCoffee!["price"]!,
                                )));
                  },
                  child: Hero(
                    tag: 'ImageInfo6',
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(selectedCoffee!["image6"]!))),
                            ),
                            Text(
                              selectedCoffee!["name"]!,
                              style: textTheme.lightTextTheme.headlineMedium,
                            ),
                            SizedBox(height: 5),
                            Text(
                              selectedCoffee!["description6"]!,
                              style: textTheme.lightTextTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCoffee!["price"]!,
                                  style: textTheme.lightTextTheme.bodyLarge,
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 36,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: colors.mainColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Text(
          "Special for you",
          style: textTheme.lightTextTheme.headlineLarge,
          textAlign: TextAlign.left,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.2,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: colors.mainColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(selectedCoffee!["image3"]!))),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "For the \nMoments\nThat Matter\n Most.",
                style: textTheme.lightTextTheme.titleLarge,
              )
            ],
          ),
        )
      ],
    );
  }
}
