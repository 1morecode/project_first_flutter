//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.yellow,
          height: 300,
          padding: EdgeInsets.all(24.0),
          child: Text("Item 1"),
        ),
        Container(
          color: Colors.deepPurpleAccent,
          height: 300,
          padding: EdgeInsets.all(24.0),
          child: Text("Item 2"),
        ),
        Container(
          color: Colors.deepOrangeAccent,
          height: 300,
          padding: EdgeInsets.all(24.0),
          child: Text("Item 3"),
        ),
        Container(
          color: Colors.brown,
          height: 300,
          padding: EdgeInsets.all(24.0),
          child: Text("Item 4"),
        ),
        Container(
          color: Colors.deepPurple,
          height: 300,
          padding: EdgeInsets.all(24.0),
          child: Text("Item 5"),
        ),

      ],
    ));
  }
}
