import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/routes/our_route.dart';
import 'package:whatsapp_clone/screens/welcome_screen.dart';
import 'package:whatsapp_clone/shared/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: KbackgroundColor,
        appBarTheme: const AppBarTheme(
          color: KappBarColor,
        ),
      ),
      home: AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset(
              height: 90,
              "images/logo.png",
            ),
          ],
        ),
        nextScreen: const WelcomeScreen(),
        pageTransitionType: PageTransitionType.fade,
      ),
      routes: routes,
    );
  }
}
