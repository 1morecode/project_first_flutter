//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Buttons"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // padding: const EdgeInsets.all(24),
          children: [
            MaterialButton(
              onPressed: () {},
              // onLongPress:(){},
              padding: const EdgeInsets.all(30),
              elevation: 24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: const BorderSide(color: Colors.black, width: 2),
              ),
              textColor: Colors.cyan,
              // focusColor: Colors.deepPurple,
              // hoverColor: Colors.orange,
              disabledColor: Colors.green,
              disabledElevation: 10,
              disabledTextColor: Colors.orange,
              height: 60,
              color: Colors.blue,
              child: const Text(
                "Material Button",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  side: const MaterialStatePropertyAll(
                      BorderSide(color: Colors.black, width: 1)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.orange),
                  elevation: const MaterialStatePropertyAll(12),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
              child: const Text("Text Button"),
            ),
            const SizedBox(
              height: 24,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
            const SizedBox(
              height: 24,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
              ),
              iconSize: 34,
              isSelected: true,
              selectedIcon: Icon(
                Icons.account_balance_sharp,
              ),
              tooltip: "Icon Button",
              color: Colors.green,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            BackButton(),
            DrawerButton(),
            FilledButton(onPressed: () {}, child: Text("Filled Button")),
            CloseButton(),
            CupertinoButton(
              child: Text("Cupertino Button"),
              onPressed: () {},
              color: Colors.blue,
              minSize: 20,
              pressedOpacity: 0.8,
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
