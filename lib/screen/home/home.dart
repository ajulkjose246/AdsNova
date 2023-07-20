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
      body: homeScreens.elementAt(indexNum),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logoutUser(context);
        },
        child: Icon(Icons.logout),
      ),
      bottomNavigationBar: Container(
        // color: Colors.black,
        decoration: BoxDecoration(
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
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
              GButton(
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
