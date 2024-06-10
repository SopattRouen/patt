import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/model_shoe.dart';
import 'package:multiflex_store_01/product/productshoe_reusable.dart';

class ShoeWidget extends StatelessWidget {
  const ShoeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: ModelShoes.modelShoes.length,
        itemBuilder: (context, index) {
          final shoe = ModelShoes.modelShoes[index];
          return ShoesReusable(modelShoes: shoe);
        },
      ),
    );
  }
}
