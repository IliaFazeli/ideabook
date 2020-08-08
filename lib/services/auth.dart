import 'package:firebase_auth/firebase_auth.dart';
import 'package:ideabook/models/users.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create userobject based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(userId: user.uid) : null;
  }

  //Sign in anonymously
  Future signInAnon() async {
    try {
      AuthResult authResult = await _auth.signInAnonymously();
      FirebaseUser user = authResult.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //Sign in w Email/Pass

  //Sign up w Email/Pass

  //Sign out
}
