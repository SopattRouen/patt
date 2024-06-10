import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/cart/cartwidget.dart';
import 'package:multiflex_store_01/controller/cartcontroller.dart';
import 'package:multiflex_store_01/model/model_cloth.dart';
import 'package:multiflex_store_01/product/product_reusable_newest.dart';

class NewestWidget extends StatelessWidget {
  NewestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.6,
        ),
        itemCount: ModelCloth.modelcloth.length,
        itemBuilder: ((context, index) {
          return Product(
            index: index,
          );
        }),
      ),
    );
  }
}

class Product extends StatefulWidget {
  Product({super.key, required this.index});
  final int index;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final addcart = Get.put(CartController());

  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    final cloth = ModelCloth.modelcloth[widget.index];
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetailCart());
      },
      child: Card(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image(
                    height: 200,
                    image: AssetImage("${cloth.images}"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${cloth.price}",
                          style: TextStyle(fontSize: 24),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isClick = !isClick;
                            });
                          },
                          child: isClick
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: IconButton(
                onPressed: () {
                  addcart.addProduct(ModelCloth.modelcloth[widget.index]);
                  Get.to(() => CartWidget());
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
