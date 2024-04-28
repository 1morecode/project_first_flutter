//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Column"),
      ),
      body: Container(
        color: Colors.cyan,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Spacer(),
            Expanded(
                child: Container(
              color: Colors.black,
              child: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
            ), flex: 1,),
            Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                  ),
                ), flex: 2,),
            Flexible(
              child: Container(
                color: Colors.grey,
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
              ), flex: 1, fit: FlexFit.loose,),
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
