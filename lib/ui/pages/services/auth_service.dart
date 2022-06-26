import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_1/ui/pages/models/user_models.dart';
import 'package:flutter_1/ui/pages/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required name,
      String age = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          age: age,
          name: name,
          balance: 25000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
