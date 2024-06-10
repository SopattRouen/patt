import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/model/model_cloth.dart';
import 'package:multiflex_store_01/product/product_reusable_newest.dart';

class SeeAllProduct extends StatefulWidget {
  const SeeAllProduct({super.key});

  @override
  State<SeeAllProduct> createState() => _SeeAllProductState();
}

class _SeeAllProductState extends State<SeeAllProduct> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    isClick = !isClick;
                    isClick
                        ? Get.changeThemeMode(ThemeMode.dark)
                        : Get.changeThemeMode(
                            ThemeMode.light,
                          );
                  });
                },
                child: isClick
                    ? Icon(
                        Icons.light_mode_sharp,
                        size: 32,

                        // color: Colors.amber,
                      )
                    : Icon(
                        Icons.light_mode_sharp,
                        size: 32,
                        color: Colors.amber,
                      )),
          ),
        ],
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 2,
          ),
          itemCount: ModelCloth.modelcloth.length,
          itemBuilder: (context, index) {
            final model = ModelCloth.modelcloth[index];
            return Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => ProductDetailCart());
                  },
                  child: Card(
                    elevation: 0,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        model.images,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 32,
                    color: Colors.amber,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
