import 'package:adsnova/screen/register/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:quickalert/quickalert.dart';

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
    var code = "";
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

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
            Pinput(
              length: 6,
              showCursor: true,
              onChanged: (values) {
                code = values;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                          top: Radius.circular(10)))),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      verificationId: loginScreen.verify, smsCode: code);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.success,
                    text: 'Phone Verification Success',
                  ).then((value) {
                    Navigator.pushNamed(context, "/home");
                  });
                } catch (e) {
                  print("Wrong Otp");
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.error,
                    title: 'Oops...',
                    text: 'Wrong Otp',
                  );
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: ButtonStyle(alignment: Alignment.bottomLeft),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Edit Phone Number ?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
