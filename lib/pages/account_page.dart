import 'package:flutter/material.dart';

class account_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Account'), backgroundColor: Colors.redAccent,
    ),

    body: Center(child: Text('Chat', style: TextStyle(fontSize: 60))),
  );
}