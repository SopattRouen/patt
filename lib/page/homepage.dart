import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/product/products.dart';
import 'package:multiflex_store_01/product/shoewidget.dart';
import 'package:multiflex_store_01/widget/catagery.dart';
import 'package:multiflex_store_01/widget/newest.dart';
// import 'package:multiflex_store_01/widget/newest.dart';
import 'package:multiflex_store_01/widget/popular.dart';
import 'package:multiflex_store_01/widget/scroolwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.search,
            color: Colors.amber,
            size: 32,
          ),
          Icon(
            Icons.notifications,
            color: Colors.amber,
            size: 32,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 31, 83, 90),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Stack(
                children: [
                  Text(
                    "MUTIFLEX \nSTORE",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 135,
                        vertical: 65,
                      ),
                      child: Image.asset(
                        'images/picHome.png',
                        height: 50,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ScrollWidget(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Catagery",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            CatageryWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Newest Items",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => SeeAllProduct());
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            NewestWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Popular Items",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            PopularIterm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shoes",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            ShoeWidget(),
          ],
        ),
      ),
    );
  }
}
