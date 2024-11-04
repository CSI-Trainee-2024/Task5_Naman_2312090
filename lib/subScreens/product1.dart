import 'package:coffee_app/screens/HomePage.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product1 extends StatefulWidget {
  final String image1;
  final String name1;

  Product1({required this.image1, required this.name1});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: ImageInfo,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                              padding:
                                  const EdgeInsets.only(right: 15, top: 15),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.name1,
                                        style:
                                            textTheme.lightTextTheme.bodySmall,
                                      ),
                                      Text(
                                        "with chocalate",
                                        style: textTheme
                                            .lightTextTheme.titleMedium,
                                      )
                                    ],
                                  ),
                                  Column(
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
                                  Column(
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
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
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
                                  Text(
                                    "Medium Toasted",
                                    style: textTheme.lightTextTheme.titleLarge,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
