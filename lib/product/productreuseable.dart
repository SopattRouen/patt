import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/product_model.dart';
import 'package:multiflex_store_01/product/adidasproduct.dart';

class ProductReusable extends StatelessWidget {
  const ProductReusable({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductView(pro: productModel);
                      },
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(productModel.image),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${productModel.title}",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
