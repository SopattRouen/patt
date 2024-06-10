import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/controller/cartcontroller.dart';
import 'package:multiflex_store_01/controller/txt_controller.dart';
import 'package:multiflex_store_01/model/firebasemodel.dart';
import 'package:multiflex_store_01/service/servicedb.dart';
import 'package:multiflex_store_01/widget/readdata.dart';

class PaymentWidget extends StatelessWidget {
  PaymentWidget({super.key});
  final controller = TxtControlller();
  final CartController controlle = Get.find();
  final ServicesDb servicesDb = ServicesDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 172, 212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          Icon(
            Icons.share,
            color: Colors.amber,
            size: 32,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: SizedBox(
            height: 600,
            child: Column(
              children: [
                TextField(
                  controller: controller.txtname,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.txtaddress,
                  decoration: InputDecoration(
                      hintText: 'address', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.txtphone,
                  decoration: InputDecoration(
                      hintText: 'Phone', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.txtcreditcard,
                  decoration: InputDecoration(
                      hintText: 'Credit Card', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.txttotal,
                  decoration: InputDecoration(
                      hintText: 'Total:\$${controlle.total}',
                      border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(
                width: 230,
                child: Text(
                  "Total:\$${controlle.total}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                width: 80,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () {
                    // _showdailog(context);
                    CloudFirestore cloud = CloudFirestore(
                      name: controller.txtname.text,
                      address: controller.txtaddress.text,
                      phone: controller.txtphone.text,
                      creditcard: controller.txtcreditcard.text,
                      total: "\$${controlle.total}",
                    );
                    servicesDb.adddata(cloud);
                    Get.to(() => InvoiceWidget());
                  },
                  child: Text(
                    'Pay',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
