import 'package:coffee_app/screens/HomePage.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class Product1 extends StatefulWidget {
  final String image1;
  final String name1;
  final String price1;

  Product1({required this.image1, required this.name1, required this.price1});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  // bool isFill = true;
  int indexColor = 0;
  int indexSize = 0;

  final List<String> chocolateType = [
    'White Chocolate',
    'Milk Chocolate',
    'Dark Chocolate'
  ];

  final List<String> coffeeSize = ['S', 'M', 'L'];

  void colorChange(int index) {
    setState(() {
      //isFill = !isFill;
      indexColor = index;
    });
  }

  void sizeChange(int index) {
    setState(() {
      indexSize = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: ImageInfo,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.image1),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: colors.primaryColor,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 25,
                                ),
                                onPressed: () {
                                  Navigator.pop((context));
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child: CircleAvatar(
                                radius: 20,
                                backgroundColor: colors.primaryColor,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                    size: 25,
                                  ),
                                  onPressed: () {},
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2355,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            gradient: const LinearGradient(colors: [
                              colors.mainColor,
                              colors.transparentColor,
                              colors.mainColor,
                            ])),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            widget.name1,
                                            style: textTheme
                                                .lightTextTheme.bodySmall,
                                          ),
                                          Text(
                                            "with chocalate",
                                            style: textTheme
                                                .lightTextTheme.titleMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.mugSaucer,
                                            size: 30,
                                            color: colors.primaryColor,
                                          ),
                                          Text(
                                            "Coffee",
                                            style: textTheme
                                                .lightTextTheme.titleMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.water_drop_rounded,
                                            color: colors.primaryColor,
                                            size: 30,
                                          ),
                                          Text("Chocalate",
                                              style: textTheme
                                                  .lightTextTheme.titleMedium)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange.shade600,
                                            size: 30,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "4.8 ",
                                                style: textTheme
                                                    .lightTextTheme.bodySmall),
                                            TextSpan(
                                                text: "(6,098)",
                                                style: textTheme
                                                    .lightTextTheme.titleSmall)
                                          ]))
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Medium Toasted",
                                      style:
                                          textTheme.lightTextTheme.titleLarge,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Description",
                  style: textTheme.lightTextTheme.bodyLarge,
                ),
              ],
            ),
            Wrap(
              children: [
                ReadMoreText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tincidunt et ullamcorper eu, vivamus semper commodo risus, vitae sollicitudin arcu pretium nec. Integer et dolor vehicula, laoreet odio in, ultricies dui. Curabitur id nisi ac nunc aliquet tincidunt. Ut eget gravida libero, ac convallis libero. Nunc a metus non leo volutpat condimentum. Nulla facilisi.",
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Read More',
                  trimExpandedText: 'Read Less',
                  style: textTheme.lightTextTheme.headlineSmall,
                  colorClickableText: colors.mainColor,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Choice of Chocalate",
                  style: textTheme.lightTextTheme.bodyLarge,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: chocolateType.map((value) {
                  int index = chocolateType.indexOf(value);
                  return MaterialButton(
                    onPressed: () => colorChange(index),
                    child: Container(
                      //padding: EdgeInsets.only(left: 5, top: 5),
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                          color: indexColor == index
                              ? colors.mainColor
                              : colors.primaryColor,
                          border: Border.all(
                            color: colors.mainColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          value,
                          style: TextStyle(
                              color: indexColor == index
                                  ? colors.primaryColor
                                  : colors.secondaryColor),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Size",
                      style: textTheme.lightTextTheme.bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: coffeeSize.map((value) {
                        int index = coffeeSize.indexOf(value);
                        return InkWell(
                          onTap: () => sizeChange(index),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: indexSize == index
                                  ? colors.mainColor
                                  : colors.geryColor,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: indexSize == index
                                        ? colors.primaryColor
                                        : colors.secondaryColor,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Quantity",
                      style: textTheme.lightTextTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: colors.mainColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.minimize,
                                  color: colors.primaryColor,
                                ),
                                SizedBox(
                                  height: 1.5,
                                )
                              ],
                            )),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "0",
                          style: textTheme.lightTextTheme.headlineMedium,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                            backgroundColor: colors.mainColor,
                            child: Icon(
                              Icons.add,
                              color: colors.primaryColor,
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Price",
                  style: textTheme.lightTextTheme.headlineSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
