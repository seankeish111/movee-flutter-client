import 'package:flutter/material.dart';


class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'), backgroundColor: Colors.redAccent,
    ),

    body: Center(child: Text('Chat', style: TextStyle(fontSize: 60))),
  );
}