import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authstatechanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String pass,
  }) async {
  await _firebaseAuth.signInWithEmailAndPassword(
    email: email, 
    password: pass
    );
  }
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String pass,
  }) async {
  await _firebaseAuth.createUserWithEmailAndPassword(
    email: email, 
    password: pass
  );
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

}
