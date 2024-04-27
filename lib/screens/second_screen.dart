//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';
import 'package:project_first/screens/first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ));

          },
          child: const Text("Previous Screen"),
        ),
      ),
    );
  }
}
