import 'package:flutter/material.dart';
import 'package:multiflex_store_01/model/firebasemodel.dart';
import 'package:multiflex_store_01/service/servicedb.dart';

class InvoiceWidget extends StatelessWidget {
  InvoiceWidget({Key? key}) : super(key: key);
  final ServicesDb db = ServicesDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          child: StreamBuilder(
            stream: db.getdata(),
            builder: (context, snapshot) {
              List todos = snapshot.data?.docs ?? [];
              if (todos.isEmpty) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  CloudFirestore todo = todos[index].data();
                  //  String todoId = todos[index].id;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            child: Image(
                              image: AssetImage("images/blessing.png"),
                            ),
                          ),
                          Text(
                            "Thanks for your order",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            todo.total,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Name:\t${todo.name}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Address:\t${todo.address}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Phone:\t${todo.phone}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: TextButton(
            onPressed: () {
              // _showdailog(context);
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return HomePage();
              // }));
            },
            child: Text(
              'More Information',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
