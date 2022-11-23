import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  final String? uid;
  DataBaseService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future updateUserData(String firstName, String lastName, String email) async {
    return await userCollection.doc(uid).set({
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "uid": uid,
    });
  }
}
