import 'package:flutter/material.dart';

import '../components/my_button.dart';
import 'screens.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = "/WelcomeScreen";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * 0.01,
                bottom: size.height * 0.03,
              ),
              child: const Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: Image.asset(
                'images/bg.png',
              ),
            ),
            MyButton(
              label: "Agree and Continue",
              onpress: () {
                Navigator.pushNamed(
                  context,
                  LoginScreen.id,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
