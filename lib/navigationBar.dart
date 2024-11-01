import 'package:coffee_app/screens/HomePage.dart';
import 'package:coffee_app/screens/cartPage.dart';
import 'package:coffee_app/screens/favourite.dart';
import 'package:coffee_app/screens/notification.dart';
import 'package:coffee_app/screens/profilePage.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  final List screens = [
    homePage(),
    favouritePage(),
    cartPage(),
    notifPage(),
    profilePage()
  ];

  void itemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

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
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
        currentIndex: currentIndex,
        onTap: itemTapped,
      ),
    );
  }
}