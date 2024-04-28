//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';
import 'package:project_first/widgets/my_column.dart';
import 'package:project_first/widgets/my_container.dart';
import 'package:project_first/widgets/my_row.dart';
import 'package:project_first/widgets/my_stack.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyContainer(),));
            },
            title: const Text("Container"),
          ),
          const SizedBox(height: 5,),
          ListTile(
            tileColor: Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyRow(),));
            },
            title: const Text("Row"),
          ),
          const SizedBox(height: 5,),
          ListTile(
            tileColor: Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyColumn(),));
            },
            title: const Text("Column"),
          ),
          const SizedBox(height: 5,),
          ListTile(
            tileColor: Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyStack(),));
            },
            title: const Text("Stack"),
          )
        ],
      ),
    );
  }
}
