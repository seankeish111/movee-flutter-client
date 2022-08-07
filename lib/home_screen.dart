import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movee/pages/account_page.dart';
import 'package:movee/pages/bookings_page.dart';
import 'package:movee/pages/movers_page.dart';
import 'package:movee/pages/home_page.dart';

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
    home_page(),
    movers_page(),
    bookings_page(),
    account_page(),




  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(


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
