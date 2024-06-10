import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/adidasmodel.dart';
import 'package:multiflex_store_01/model/product_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.pro});
  final ProductModel pro;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA3A9E4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("${pro.title}"),
        centerTitle: true,
        leading: BackButton(),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Image(
              image: AssetImage("${pro.image}"),
            ),
          ),
        ],
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 0.6,
          ),
          itemCount: ModelAdidas.model.length,
          itemBuilder: (context, index) {
            final items = ModelAdidas.model[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 175,
                          child: Image(
                            height: 150,
                            image: NetworkImage(items.images),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Container(
                          // color: Colors.amber,
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${items.title}",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$${items.price}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      size: 26,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 100,
                  //     vertical: 10,
                  //   ),
                  //   child: Positioned(
                  //     child: Icon(
                  //       Icons.favorite_border,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
