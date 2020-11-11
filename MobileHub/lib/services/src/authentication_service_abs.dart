import 'package:firebase_auth/firebase_auth.dart';

class Authenticationervice {
  final FirebaseAuth _firebaseAuth;
  Authenticationervice(this._firebaseAuth);

  Stream get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> singIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Singed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> singUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Singed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
