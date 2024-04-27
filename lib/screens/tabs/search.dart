//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          children: [
            // Email Field
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CupertinoTextField(
                style: TextStyle(fontSize: 23),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                placeholder: "Enter Email Address",
              ),
            ),
            // Password Field
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CupertinoTextField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isPasswordVisible,
                placeholder: "Enter Password",
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(isPasswordVisible
                      ? CupertinoIcons.eye_slash
                      : CupertinoIcons.eye),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
