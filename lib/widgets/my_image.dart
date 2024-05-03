//*************   © Copyrighted by 1 More Code. *********************

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  // static File file = File("logo.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Image.file(file),
            CachedNetworkImage(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/2/2d/Snake_River_%285mb%29.jpg"),
            // Assets Image
            Image.asset(
              "assets/logo.png",
              // color: Colors.blue,
              width: 150,
              height: 100,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              // scale: 0.6,
              // repeat: ImageRepeat.repeatX,
              filterQuality: FilterQuality.medium,
            ),
            const SizedBox(
              height: 16,
            ),
            // Network Image
            Image.network(
              "https://t3.ftcdn.net/jpg/03/79/17/00/360_F_379170051_7No0Yg8z2uxbyby4Y0WFDNCBZo18tNGr.jpg",
              height: 200,
              width: 400,
              fit: BoxFit.contain,
            ),

            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/03/79/17/00/360_F_379170051_7No0Yg8z2uxbyby4Y0WFDNCBZo18tNGr.jpg"),
                ),
              ),
            ),

            const FadeInImage(
              placeholder: AssetImage("assets/logo.png"),
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/2/2d/Snake_River_%285mb%29.jpg"),
            ),



          ],
        ),
      ),
    );
  }
}
