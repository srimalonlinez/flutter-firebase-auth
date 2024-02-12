import 'package:firebase_auth_tutorial/screens/authentication/register.dart';
import 'package:firebase_auth_tutorial/screens/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool signinPage = true;

  //toggle pages
  void swithPages() {
    setState(() {
      signinPage = !signinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signinPage == true) {
      return Sign_In(toggle: swithPages);
    } else {
      return Register(toggle: swithPages);
    }
  }
}
