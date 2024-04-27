//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: Center(child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          leading: const Icon(Icons.person,),
          title: const Text("Account"),
          subtitle: const Text("Sub title", style: TextStyle(fontSize: 16),),
          onTap: () {
            print("Tapped on Account");
          },
          trailing: const Icon(Icons.account_balance, size: 24,),
          enabled: true,
          iconColor: Colors.blue,
        ),
        ListTile(
          leading: const Icon(Icons.menu_book),
          title: const Text("Categories"),
          onTap: () {
            print("Tapped on Categories");
          },
        ),
        const ListTile(
          leading: Icon(Icons.brightness_auto),
          title: Text("Our Brand"),
        ),
        const ListTile(
          leading: Icon(Icons.token_sharp),
          title: Text("New Arrivals"),
        ),
        const ListTile(
          leading: Icon(Icons.card_giftcard),
          title: Text("Just Exclusive"),
        ),
        const ListTile(
          leading: Icon(Icons.percent_outlined),
          title: Text("Sale Collections"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Account"),
        ),
        ListTile(
          leading: Icon(Icons.menu_book),
          title: Text("Categories"),
        ),
        ListTile(
          leading: Icon(Icons.brightness_auto),
          title: Text("Our Brand"),
        ),
        ListTile(
          leading: Icon(Icons.token_sharp),
          title: Text("New Arrivals"),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard),
          title: Text("Just Exclusive"),
        ),
        ListTile(
          leading: Icon(Icons.percent_outlined),
          title: Text("Sale Collections"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Account"),
        ),
        ListTile(
          leading: Icon(Icons.menu_book),
          title: Text("Categories"),
        ),
        ListTile(
          leading: Icon(Icons.brightness_auto),
          title: Text("Our Brand"),
        ),
        ListTile(
          leading: Icon(Icons.token_sharp),
          title: Text("New Arrivals"),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard),
          title: Text("Just Exclusive"),
        ),
        ListTile(
          leading: Icon(Icons.percent_outlined),
          title: Text("Sale Collections"),
        ),
      ],
    ),),);
  }
}
