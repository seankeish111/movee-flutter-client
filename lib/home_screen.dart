import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens =[
    Center(child: Text('Home', style: TextStyle(fontSize: 60))),
    Center(child: Text('Movers', style: TextStyle(fontSize: 60))),
    Center(child: Text('Bookings', style: TextStyle(fontSize: 60))),
    Center(child: Text('Account', style: TextStyle(fontSize: 60))),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movee'),
        backgroundColor: Colors.redAccent,
      ),

      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        iconSize: 30,
        showUnselectedLabels: true,

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.redAccent,


          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.fire_truck),
            label: "Movers",
            backgroundColor: Colors.redAccent,
          ),

           BottomNavigationBarItem(
            icon:  Icon(Icons.connect_without_contact),
            label: "Bookings",
            backgroundColor: Colors.redAccent,
          ),

          BottomNavigationBarItem(
            icon:  Icon(Icons.account_box_rounded),
            label: "Account",
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
