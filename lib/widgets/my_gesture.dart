//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyGesture extends StatelessWidget {
  const MyGesture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestures"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gesture Detector
              GestureDetector(
                onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("Long Pressed");
                },
                onDoubleTap: () {
                  print("Double Tapped");
                },
                onDoubleTapCancel: () {
                  print("Double Tap Cancel");
                },
                onLongPressDown: (details) {
                  print(
                      "Long Press Down ${details.globalPosition} ${details.localPosition} ${details.kind}");
                },
                onHorizontalDragStart: (details) {
                  print("Horizontal Drag Start");
                },
                onHorizontalDragEnd: (details) {
                  print("Horizontal Drag Ends");
                },
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                ),
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/image.png"),
              ),

              // Container(
              //   height: 400,
              //   width: 400,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(30),
              //     color: Colors.green
              //   ),
              //   child: Image.asset("assets/image.png", height: 400, width: 400, fit: BoxFit.cover,),
              // ),

              InkWell(
                onTap: () {
                  print("Inkwell Tapped");
                }, // Handle your onTap
                splashColor: Colors.lime,
                // radius: 40,
                borderRadius: BorderRadius.circular(10),
                child: Ink(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Inkwell"),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
