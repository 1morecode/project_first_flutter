//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Single Child ScrollView"),),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              24,
                  (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Item $index",
                    style: const TextStyle(fontSize: 24),
                  ),
                  tileColor: Colors.cyan,
                ),
              )),
        ),
      ),
    );
  }
}
