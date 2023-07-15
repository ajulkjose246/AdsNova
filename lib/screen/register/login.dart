import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  static String verify = "";

  @override
  State<loginScreen> createState() => _loginScreenState();
}

TextEditingController usrPhone = TextEditingController();

class _loginScreenState extends State<loginScreen> {
  final TextEditingController countryCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryCodeController.text = '+91';
  }

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
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    readOnly: true,
                    enableInteractiveSelection: false,
                    controller: countryCodeController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: TextField(
                    controller: usrPhone,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              child: ElevatedButton(
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                            top: Radius.circular(10)))),
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: "${'+91' + usrPhone.text}",
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.error,
                        text: 'OTP Send Failed!',
                      );
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'OTP Send Successfully!',
                      ).then((value) async {
                        Navigator.pushNamed(context, '/otp');
                      });
                      //
                      loginScreen.verify = verificationId;
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
                child: const Text('Send OTP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
