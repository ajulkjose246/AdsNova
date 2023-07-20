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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              tooltip: "Live TV",
              icon: Icon(Icons.tv),
              label: 'Live TV',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              tooltip: "Watch Later",
              icon: Icon(Icons.watch_later_outlined),
              label: 'Watch Later',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              tooltip: "Profile",
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              backgroundColor: Colors.blue),
        ],
        currentIndex: indexNum,
        onTap: (value) {
          setState(() {
            indexNum = value;
          });
        },
      ),
    );
  }
}
