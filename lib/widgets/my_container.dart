//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';
import 'package:project_first/screens/second_screen.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Container"),
        ),
        body: Center(
          child: Container(
            color: Colors.cyan,
            child: Container(
              height: 200,
              width: 200,
              // color: Colors.grey,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(24),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(12),
                  // shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 24,
                    ),
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 24,
                    )
                  ],
                  gradient: const LinearGradient(
                    colors: [Colors.green, Colors.yellow, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0, 0.3, 0.4],
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://blueroseone.com/publish/wp-content/uploads/2023/10/What-is-a-book-dummy-a-complete-guide-on-how-to-create-a-book-dummy-with-blueroseone.com_.png"),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) {
                      print(exception);
                    },
                  )),
              child: Text("Container"),
            ),
          ),
        )

        // Center(
        //   child: TextButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => const SecondScreen(),
        //             ));
        //
        //         // Navigator.pushAndRemoveUntil(context,
        //         //     MaterialPageRoute(builder: (context) => const SecondScreen(),), (
        //         //         route) => false);
        //       },
        //       child: const Text("Second Screen")),
        // ),
        );
  }
}
