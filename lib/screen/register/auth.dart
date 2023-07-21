import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authScreen extends StatefulWidget {
  @override
  State<authScreen> createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  void checkUser() async {
    // Wait for Firebase authentication to initialize
    await Future.delayed(Duration(seconds: 3));

    // Check if the user is logged in
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // User is logged in, show home screen.
      // Navigator.pushReplacementNamed(context, '/');
      Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
    } else {
      // User is not logged in, show login screen.
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AdsNova",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
