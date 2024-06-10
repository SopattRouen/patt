import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/controller/cartcontroller.dart';
import 'package:multiflex_store_01/model/model_cloth.dart';
import 'package:multiflex_store_01/widget/bottomcart.dart';

class CartWidget extends StatelessWidget {
  CartWidget({super.key});
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Color.fromARGB(255, 11, 55, 61),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Cart List",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: ListView.builder(
              itemCount: controller.modelCloth.length,
              itemBuilder: (context, index) {
                return ProductCart(
                  controller: controller,
                  index: index,
                  cloth: controller.modelCloth.keys.toList()[index],
                  quentity: controller.modelCloth.values.toList()[index],
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: BottomCart(),
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.controller,
    required this.quentity,
    required this.index,
    required this.cloth,
  });
  final CartController controller;
  final int quentity;
  final int index;
  final ModelCloth cloth;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Image(
                    image: AssetImage(
                      "${cloth.images}",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "\$${cloth.price}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.addProduct(cloth);
                  },
                  icon: Icon(Icons.add),
                ),
                Text(
                  "${quentity}",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    if (quentity > 1) {
                      controller.remove(cloth);
                    }
                    // else{

                    // }
                  },
                  icon: Icon(Icons.remove_circle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
