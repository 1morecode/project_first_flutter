//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Row"),
      ),
      body: Center(
        child: Container(
          height: 100,
          color: Colors.greenAccent,
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Expanded(
              //     child: Container(
              //   color: Colors.yellow,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.pink,
              //   ),
              // )),
              Flexible(
                  child: Container(
                    color: Colors.pink,
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                    ),
                  ), fit: FlexFit.tight, flex: 1,),
              // Spacer(),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
                flex: 1,
              ),
              const CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
