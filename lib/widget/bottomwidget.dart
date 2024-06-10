import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Add to Cart',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
