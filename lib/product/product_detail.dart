import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/model_rest_api.dart';
import 'package:multiflex_store_01/widget/bottomwidget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, required this.productModelApi});
  final ProductModelApi productModelApi;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isclick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text(
          "Product Detial",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.amber,
              size: 32,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Image(
                  image: NetworkImage("${widget.productModelApi.image}"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "${widget.productModelApi.title}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Price:",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "\$${widget.productModelApi.price}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isclick = !isclick;
                      });
                    },
                    child: isclick
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                          ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${widget.productModelApi.description}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomWidget(),
    );
  }
}
