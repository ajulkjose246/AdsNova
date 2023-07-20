import 'package:adsnova/screen/home/adslist.dart';
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
  @override
  void initState() {
    checkUser();
    super.initState();
  }

  void logoutUser(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        title: Text("AdsNova"),
        actions: [
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        value: "settings",
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.settings,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Settings"),
                            )
                          ],
                        )),
                    const PopupMenuItem(
                        value: "settings",
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Profile"),
                            )
                          ],
                        )),
                  ])
        ],
      ),
      body: adsListScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logoutUser(context);
        },
        child: Icon(Icons.logout),
      ),
    );
  }

  void checkUser() {
    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      print(user);
    } else {
      print("User Not Found");
    }
  }
}
