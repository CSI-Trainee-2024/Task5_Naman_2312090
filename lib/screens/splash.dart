import 'package:coffee_app/navigationBar.dart';
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
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: colors.splashColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              "assets/images/splash.png",
            ),
            Column(
              children: [
                Text(
                  "Stay Focused",
                  textAlign: TextAlign.center,
                  style: textTheme.lightTextTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Get the cup filled of your choice to stay focused and awake. Different type of coffee menu, hot lottee cappucino.",
                  style: textTheme.lightTextTheme.headlineSmall,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => BottomNavigation()));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Dive In"),
                    SizedBox(
                      width: 20,
                    ),
                    FaIcon(FontAwesomeIcons.arrowRight)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
