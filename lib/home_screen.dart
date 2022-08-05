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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movee'),
        ),
            body: Column(
              children: [
                Text(
                  user.email!,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              const SignOutButton(),
              ],
            ),
    );

  }
}