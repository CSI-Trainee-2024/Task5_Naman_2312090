import 'package:coffee_app/utils/constants/colors.dart';
import 'package:coffee_app/utils/theme/custom_theme/elevatedButton_theme.dart';
import 'package:coffee_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: colors.splashColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png"),
            Text(
              "Stay Focused",
              style: textTheme.lightTextTheme.headlineLarge,
            ),
            Text(
              "Get the cup filled of your choice to stay focused and awake. Different type of coffee menu, hot lottee cappucino.",
              style: textTheme.lightTextTheme.headlineSmall,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Dive"), FaIcon(FontAwesomeIcons.arrowRight)],
                ))
          ],
        ),
      ),
    );
  }
}
