import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_tutorial/models/UserModel.dart';

class AuthServices {
  //
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //
  UserModel? _userWithFirebaseUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUid);
  }

//anon user
  Future signInAnonymusly() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//reg using email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//signin using email ans password
  Future signInUsingEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
