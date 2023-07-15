import 'package:adsnova/screen/home/home.dart';
import 'package:adsnova/screen/register/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authScreen extends StatefulWidget {
  const authScreen({super.key});

  @override
  State<authScreen> createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return homeScreen();
          } else {
            return loginScreen();
          }
        },
      ),
    );
  }
}