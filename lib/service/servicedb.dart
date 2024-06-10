import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:multiflex_store_01/model/firebasemodel.dart';

const REF = "users";

class ServicesDb {
  final _firebase = FirebaseFirestore.instance;
  late final CollectionReference collectref;
  ServicesDb() {
    collectref = _firebase.collection(REF).withConverter<CloudFirestore>(
          fromFirestore: (snapshot, _) =>
              CloudFirestore.fromJson(snapshot.data()!),
          toFirestore: (snap, _) => snap.toJson(),
        );
  }
  Stream<QuerySnapshot?> getdata() {
    return collectref.snapshots();
  }

  void adddata(CloudFirestore cloud) {
    collectref.add(cloud);
    Get.snackbar("MULTIFEX STORE", "You have paid Success");
  }
}
