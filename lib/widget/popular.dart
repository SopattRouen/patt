import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/model_rest_api.dart';
import 'package:multiflex_store_01/service/api_services.dart';
import 'package:multiflex_store_01/product/productreusableapi.dart';

class PopularIterm extends StatefulWidget {
  PopularIterm({
    super.key,
  });

  @override
  State<PopularIterm> createState() => _PopularItermState();
}

class _PopularItermState extends State<PopularIterm> {
  late Future<List<ProductModelApi>> _product;

  @override
  void initState() {
    _product = ServicesApi.getUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _product,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.data == null) {
          return Center(
            child: Text("No Data"),
          );
        }
        if (snapshot.data!.isEmpty) {
          return Center(
            child: Text("Data is Empty"),
          );
        }
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 0.5,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final product = snapshot.data![index];
              return ProductApiWidget(pro: product);
            },
          ),
        );
      },
    );
  }
}
