import 'package:flutter/material.dart';
import 'package:ideabook/screens/authenticate/authenticate.dart';
import 'package:ideabook/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return either home or auth widget based on user's status

    return Authenticate();
  }
}
