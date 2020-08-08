import 'package:flutter/material.dart';
import 'package:ideabook/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Sign In"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: RaisedButton(
          child: Text("Sign in anon"),
          onPressed: () async {
            dynamic result = await _authService.signInAnon();
            if (result == null) {
              print("not signed in");
            } else {
              print("signed in");
              print(result);
            }
          },
        ),
      ),
    );
  }
}
