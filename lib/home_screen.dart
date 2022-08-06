import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    print(user);
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movee'),backgroundColor: Colors.redAccent,
        ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    user.email!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              Column(

                children: [
                  Padding(

                    padding: const EdgeInsets.all(50.0),
                    child: Center(child: const SignOutButton()),
                  ),
                ],
              ),
              ],
            ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          backgroundColor: Colors.redAccent,

        ),

          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact),
            label: 'Home',
            backgroundColor: Colors.redAccent,

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'text',
            backgroundColor: Colors.redAccent,

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Home',
            backgroundColor: Colors.redAccent,

          ),



        ],



      ),
    );


  }
}


