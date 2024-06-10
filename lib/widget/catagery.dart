import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/product_model.dart';
import 'package:multiflex_store_01/product/productreuseable.dart';

class CatageryWidget extends StatelessWidget {
  CatageryWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ProductModel.model.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final product = ProductModel.model[index];
          return ProductReusable(productModel: product);
        },
      ),
    );
  }
}
