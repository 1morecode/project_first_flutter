//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Stack"),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          // alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Windows_10_Default_Profile_Picture.svg/2048px-Windows_10_Default_Profile_Picture.svg.png"),
            ),

            Positioned(
              child: Container(
                color: Colors.blueAccent,
                width: 30,
                // height: 50,
              ),
              top: 20,
              // left: 20,
              // right: 20,
              bottom: 40,
            ),

            // Padding(
            //   padding: const EdgeInsets.all(4.0),
            //   child: CircleAvatar(
            //     backgroundColor: Colors.green,
            //     radius: 10,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
