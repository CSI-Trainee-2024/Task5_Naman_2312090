import 'package:coffee_app/screens/HomePage.dart';
import 'package:coffee_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product1 extends StatefulWidget {
  final String image1;

  Product1({required this.image1});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          gradient: const LinearGradient(colors: [
                            colors.mainColor,
                            colors.transparentColor,
                            colors.mainColor,
                          ])),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
