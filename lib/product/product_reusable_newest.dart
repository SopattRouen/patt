import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailCart extends StatelessWidget {
  ProductDetailCart({super.key});
  final List<String> image = [
    "images/cloth1.jpg",
    "images/cloth2.jpg",
    "images/cloth4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              size: 32,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 350,
        width: MediaQuery.of(context).size.width,
        child: FanCarouselImageSlider(
          imagesLink: image,
          isAssets: true,
          sliderHeight: 330,
          autoPlay: true,
          imageFitMode: BoxFit.cover,
        ),
      ),
    );
  }
}
