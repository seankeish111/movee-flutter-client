import 'package:flutter/material.dart';


class bookings_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Bookings'), backgroundColor: Colors.redAccent,
    ),

    body: Center(child: Text('Chat', style: TextStyle(fontSize: 60))),
  );
}