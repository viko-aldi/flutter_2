import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_1/ui/pages/models/user_models.dart';

// class UserService{

//   CollectionReference _userReference =_
//   FirebaseFirestore.instance.collection('users');
// }

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'age': user.age,
        'balance': user.balance,
      });

      
    } catch (e) {
      throw e;
    }
  }
}
