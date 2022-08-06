import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movee'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Column(
              children: const[
                Padding(
                  padding:  EdgeInsets.all(50.0),
                  child: Center(child:  SignOutButton()),
                )
              ],
            )
          ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 16,

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white,


          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Menu",
            backgroundColor: Colors.black,
          ),

           BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            label: "Account",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
