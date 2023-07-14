import 'package:adsnova/screen/register/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

TextEditingController usrOtp = TextEditingController();

final FirebaseAuth auth = FirebaseAuth.instance;

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/adsnova-0.appspot.com/o/register%2FLogin.png?alt=media&token=1e982ec9-e27f-4a92-abf9-2c63470cdb2c",
              height: 270,
            ),
            const Text(
              'Phone Verification',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Text(
              'Before getting started, we kindly ask you to register your phone number!',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: usrOtp,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue), // Replace with your desired color
                ),
                labelText: 'OTP',
                labelStyle: TextStyle(color: Colors.blue),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: loginScreen.verify, smsCode: usrOtp.text);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                  print("Success");
                  Navigator.pushNamed(context, "/home");
                } catch (e) {
                  print("Wrong Otp");
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
