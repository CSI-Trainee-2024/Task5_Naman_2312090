import 'package:flutter/material.dart';

class shop {
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

  List cart = [];

  List get _coffeeData => coffeeData;
  List get _cart => cart;
}