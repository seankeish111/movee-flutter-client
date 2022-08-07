import 'package:flutter/material.dart';


class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  int counter = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'), backgroundColor: Colors.redAccent,
    ),

    body: Center(child: Text('hey', style: TextStyle(fontSize: 60))),

  );
}