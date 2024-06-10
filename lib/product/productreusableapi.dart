import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/model_rest_api.dart';
import 'package:multiflex_store_01/product/product_detail.dart';

class ProductApiWidget extends StatefulWidget {
  ProductApiWidget({super.key, required this.pro});
  final ProductModelApi pro;
  @override
  State<ProductApiWidget> createState() => _ProductApiWidgetState();
}

class _ProductApiWidgetState extends State<ProductApiWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetail(
                    productModelApi: widget.pro,
                  );
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  children: [
                    Image(
                      height: 130,
                      image: NetworkImage("${widget.pro.image}"),
                    ),
                    Text(
                      "${widget.pro.title}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${widget.pro.price}",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          Icons.favorite_border,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart,
                size: 32,
                color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
