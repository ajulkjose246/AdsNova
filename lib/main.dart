import 'package:adsnova/screen/home/home.dart';
import 'package:adsnova/screen/register/login.dart';
import 'package:adsnova/screen/register/otp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(adsNova());
}

class adsNova extends StatefulWidget {
  const adsNova({super.key});

  @override
  State<adsNova> createState() => _adsNovaState();
}

class _adsNovaState extends State<adsNova> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AdsNova",
      routes: {
        "/": (context) => loginScreen(),
        "/otp": (context) => otpScreen(),
        "/home": (context) => homeScreen(),
      },
    );
  }
}
