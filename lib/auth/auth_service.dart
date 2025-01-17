import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailPassword({required String email ,required String password}) async{
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }

  }
  Future<UserCredential> signUpWithEmailPassword({required String email, required String password}) async{
    try {
      
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
    }on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
}