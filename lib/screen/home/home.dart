import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

// Check if the user is logged in
User? user = FirebaseAuth.instance.currentUser;

class _homeScreenState extends State<homeScreen> {
  void logoutUser(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        title: Text("Home"),
      ),
      body: Center(child: Text(user!.phoneNumber!)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logoutUser(context);
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
