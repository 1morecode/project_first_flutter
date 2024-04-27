//*************   © Copyrighted by 1 More Code. *********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_first/screens/components/drawer.dart';
import 'package:project_first/screens/tabs/home.dart';
import 'package:project_first/screens/tabs/search.dart';
import 'package:project_first/screens/tabs/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int selectedIndex = 0;
  late PageController  pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green,
        width: MediaQuery.of(context).size.width/1.5,
        child: const MyDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("First Flutter", style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bell))
        ],
      ),
      body: PageView(
        controller: pageController,
        children: const [
          Home(),
          WishList(),
          Search()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            pageController.jumpToPage(value);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_sharp),
              label: "Wishlist"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
          ),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.notifications),
          //     label: "Notifications"
          // ),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person),
          //     label: "Account"
          // )
        ],
      ),
    );
  }
}
