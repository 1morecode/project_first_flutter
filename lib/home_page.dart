//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';
import 'package:project_first/widgets/my_button.dart';
import 'package:project_first/widgets/my_column.dart';
import 'package:project_first/widgets/my_container.dart';
import 'package:project_first/widgets/my_forms.dart';
import 'package:project_first/widgets/my_gridview.dart';
import 'package:project_first/widgets/my_image.dart';
import 'package:project_first/widgets/my_listview.dart';
import 'package:project_first/widgets/my_row.dart';
import 'package:project_first/widgets/my_single_scrollview.dart';
import 'package:project_first/widgets/my_stack.dart';
import 'package:project_first/widgets/my_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyContainer(),
                  ));
            },
            title: const Text("Container"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyRow(),
                  ));
            },
            title: const Text("Row"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyColumn(),
                  ));
            },
            title: const Text("Column"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyStack(),
                  ));
            },
            title: const Text("Stack"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyListView(),
                  ));
            },
            title: const Text("ListView"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MySingleChildScrollView(),
                  ));
            },
            title: const Text("Single Child ScrollView"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyGridView(),
                  ));
            },
            title: const Text("GridView"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyForms(),
                  ));
            },
            title: const Text("Forms"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyButton(),
                  ));
            },
            title: const Text("Buttons"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyText(),
                  ));
            },
            title: const Text("Texts"),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyImage(),
                  ));
            },
            title: const Text("Images"),
          )
        ],
      ),
    );
  }
}
