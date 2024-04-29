//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(child: ListView(
        children: [
          const CircleAvatar(),
          ListView(
            padding: const EdgeInsets.all(24),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // reverse: true,
            scrollDirection: Axis.vertical,
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
          )
        ],
      ),),
    );
  }
}
