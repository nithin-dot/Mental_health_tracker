// ignore_for_file: nullable_type_in_catch_clause

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mental_health_app/service/database_service.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future registerUserWithEmailandPassword(
      String firstName, String lastName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;
      if (user != null) {
        await DataBaseService(uid: user.uid)
            .updateUserData(firstName, lastName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
       
    }
  }
}
