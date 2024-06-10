import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  final List _images = [
    "images/cloth1.jpg",
    "images/cloth2.jpg",
    "images/cloth3.jpeg",
  ];
  int currenIndex = 0;
  final CarouselController controller = CarouselController();

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _images.asMap().entries.map(
        (entry) {
          return GestureDetector(
            onTap: () {
              controller.jumpToPage(entry.key);
              setState(() {
                currenIndex = entry.key;
              });
            },
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    currenIndex == entry.key ? Colors.black54 : Colors.white70,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: controller,
          itemCount: _images.length,
          itemBuilder: (context, index, reaLindex) {
            final image = _images[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            );
          },
          options: CarouselOptions(
            initialPage: 0,
            viewportFraction: 1,
            height: MediaQuery.of(context).size.height * 0.25,
            reverse: false,
            autoPlay: true,
            onPageChanged: (index, reason) {
              currenIndex = index;
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: buildIndicator(),
        ),
      ],
    );
  }
}
