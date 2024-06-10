import 'package:flutter/material.dart';
import 'package:multiflex_store_01/page/favoritepage.dart';
import 'package:multiflex_store_01/page/homepage.dart';
import 'package:multiflex_store_01/page/settingpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final page = [
  HomePage(),
  FavoritePage(),
  // CartWidget(),
  SettingPage(),
];

class _HomeScreenState extends State<HomeScreen> {
  int pageSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[pageSelect],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          // NavigationDestination(
          //   icon: Icon(Icons.shopping_cart_checkout),
          //   label: "Cart",
          // ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
        selectedIndex: pageSelect,
        onDestinationSelected: (value) {
          setState(() {
            pageSelect = value;
          });
        },
      ),
    );
  }
}
