import 'dart:io';

import 'package:firebase_auth_tutorial/models/UserModel.dart';
import 'package:firebase_auth_tutorial/screens/wrapper.dart';
import 'package:firebase_auth_tutorial/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBWFgTggvudsIeMmN5ERh9IlEis62WZZLc",
      appId: "1:682909642156:android:8fed72338056bdd8955e09",
      messagingSenderId: "682909642156",
      projectId: "authfirebase-11451",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ""),
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
