import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/page/favoritepage.dart';
import 'package:multiflex_store_01/widget/readdata.dart';

class DrawerWidgetScreen extends StatefulWidget {
  const DrawerWidgetScreen({super.key});

  @override
  State<DrawerWidgetScreen> createState() => _DrawerWidgetScreenState();
}

class _DrawerWidgetScreenState extends State<DrawerWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  // color: Colors.red,
                  ),
              accountName: Text(
                "Sophat",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                "www.vanhong168@gmail.com",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.money_off_rounded),
            title: GestureDetector(
              onTap: () {
                Get.to(() => InvoiceWidget());
              },
              child: Text(
                "Invoice",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: GestureDetector(
              onTap: () {
                Get.to(() => FavoritePage());
              },
              child: Text(
                "Wist List",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Setting",
            ),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text(
              "Privacy",
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text(
                "Log Out",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
