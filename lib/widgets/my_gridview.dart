//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: ListView(
        children: [
          GridView.count(
            crossAxisCount: 4,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            reverse: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 3 / 2,
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                color: Colors.grey,
              ),
              Container(
                color: Colors.grey,
              ),
              Container(
                color: Colors.grey,
              ),
              Container(
                color: Colors.grey,
              ),
              Container(
                color: Colors.grey,
              ),
            ],
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3),
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                    color: Colors.deepPurple,
                    child: Text("Index $index"),
                  )),
          GridView.custom(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3),
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                Container(
                  color: Colors.yellow,
                )
              ],
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(
            height: 24,
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
