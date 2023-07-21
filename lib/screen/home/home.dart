import 'package:adsnova/screen/home/adslist.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

// Check if the user is logged in
User? user = FirebaseAuth.instance.currentUser;
int indexNum = 0;
List homeScreens = const [
  adsListScreen(),
  Text("2"),
  Text("3"),
  Text("4"),
];

class _homeScreenState extends State<homeScreen> {
  void logoutUser(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 236, 241, 1),
      body: homeScreens.elementAt(indexNum),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logoutUser(context);
        },
        child: Icon(Icons.logout),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), // Change the top left radius
            topRight: Radius.circular(15), // Change the top right radius
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 74, 73, 73),
            padding: EdgeInsets.all(16),
            gap: 8,
            onTabChange: (value) {
              setState(() {
                indexNum = value;
              });
            },
            tabs: const [
              GButton(
                iconSize: 15,
                textSize: 15,
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                iconSize: 15,
                textSize: 15,
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                iconSize: 15,
                textSize: 15,
                icon: Icons.person,
                text: "Profile",
              ),
              GButton(
                iconSize: 15,
                textSize: 15,
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
