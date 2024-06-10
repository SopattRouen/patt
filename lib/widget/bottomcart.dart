import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/widget/paymentwidget.dart';
// import 'package:multiflex_store_01/model/firebasemodel.dart';
// import 'package:multiflex_store_01/service/servicedb.dart';

class BottomCart extends StatelessWidget {
  BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(5.0), // Container(
        //   width: 230,
        //   child: Text(
        //     "Total:\$${controller.total}",
        //     style: TextStyle(fontSize: 25),
        //   ),
        // ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              // _showdailog(context);
              Get.to(() => PaymentWidget());
            },
            child: Text(
              'Check Out',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
