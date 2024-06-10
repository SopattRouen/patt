import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/model_shoe.dart';

class ShoesReusable extends StatefulWidget {
  const ShoesReusable({super.key, required this.modelShoes});
  final ModelShoes modelShoes;

  @override
  State<ShoesReusable> createState() => _ShoesReusableState();
}

class _ShoesReusableState extends State<ShoesReusable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            width: 250,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              widget.modelShoes.images,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
