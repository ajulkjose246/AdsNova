import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(40, 40, 40, 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(13))),
                height: 205,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 150,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(56, 56, 56, 1),
                                      // color: Color.fromRGBO(232, 236, 241,1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Image.network(
                                        "https://www.366icons.com/media/01/profile-avatar-account-icon-16699.png"),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(56, 56, 56, 1),
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(13)),
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
                            width: 20,
                          ),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              child: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              child: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              child: const Icon(
                                Icons.share,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(55, 55, 55, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              width: 330,
                              height: 76,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, top: 10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(71, 71, 71, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)),
                                      ),
                                      width: 95,
                                      height: 55,
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Wallet",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                size: 20,
                                                Icons.currency_rupee_sharp,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "100",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(71, 71, 71, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)),
                                      ),
                                      width: 95,
                                      height: 55,
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Coins",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                size: 20,
                                                LineIcons.coins,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                "100",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(71, 71, 71, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)),
                                      ),
                                      width: 95,
                                      height: 55,
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Gems",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                size: 20,
                                                Icons.diamond,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                "100",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              height: 45,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: const Row(
                children: [
                  Icon(
                    color: Colors.blue,
                    Icons.search_sharp,
                    size: 20,
                  ),
                  Text(
                    "Search Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '"Latest Ads"',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
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
                padding: EdgeInsets.only(left: 10, right: 5, top: 5),
                width: 165,
                height: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.image,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ),
                    const Text(
                      "GET STARTED",
                      style: TextStyle(color: Colors.green, fontSize: 7),
                    ),
                    SizedBox(height: 5),
                    const Text(
                      "Let's strat by adding money to your account money to your account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.network(
                          width: 50,
                          "https://kayrabilisim.com/wp-content/uploads/2020/01/cropped-1200px-Google_Ads_logo.svg_-1024x956.png"),
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
                padding: EdgeInsets.only(left: 10, right: 5, top: 5),
                width: 165,
                height: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.image,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ),
                    const Text(
                      "GET STARTED",
                      style: TextStyle(color: Colors.green, fontSize: 7),
                    ),
                    SizedBox(height: 5),
                    const Text(
                      "Let's strat by adding money to your account money to your account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.network(
                          width: 50,
                          "https://kayrabilisim.com/wp-content/uploads/2020/01/cropped-1200px-Google_Ads_logo.svg_-1024x956.png"),
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
