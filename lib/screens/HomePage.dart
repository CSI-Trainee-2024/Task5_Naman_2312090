import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
            child: AppBar(
              leading:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.apps)),
              actions: const [Icon(Icons.person)],
            ),
          )),
    );
  }
}
