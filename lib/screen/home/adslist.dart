import 'package:flutter/material.dart';

class adsListScreen extends StatefulWidget {
  const adsListScreen({super.key});

  @override
  State<adsListScreen> createState() => _adsListScreenState();
}

class _adsListScreenState extends State<adsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(40, 40, 40, 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                          width: 150,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(56, 56, 56, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(56, 56, 56, 1),
                                  // color: Color.fromRGBO(232, 236, 241,1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.network(
                                    "https://www.366icons.com/media/01/profile-avatar-account-icon-16699.png"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(56, 56, 56, 1),
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(20)),
                                ),
                                child: const Text(
                                  "Ajul K Jose",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(56, 56, 56, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(56, 56, 56, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                width: 150,
                height: 100,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.blue,
                    ),
                    Text(
                      'Ads 1',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'subtitle',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                width: 150,
                height: 100,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.exit_to_app,
                      size: 20,
                      color: Colors.blue,
                    ),
                    Text(
                      'Ads 2',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'subtitle',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
