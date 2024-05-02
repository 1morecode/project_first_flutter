//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Texts"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "This is Text Widget For Alignment Testing",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.ltr,
              textScaler: TextScaler.linear(0.5),
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 32,
                fontWeight: FontWeight.w900,
                backgroundColor: Colors.limeAccent,
                decorationStyle: TextDecorationStyle.wavy,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                decorationThickness: 2,
                letterSpacing: 6,
                overflow: TextOverflow.visible,
                wordSpacing: 24,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SelectableText(
              "Selectable Text",
              onSelectionChanged: (selection, cause) {
                print(selection);
                print(cause);
              },
            ),
          ],
        ),
      ),
    );
  }
}
