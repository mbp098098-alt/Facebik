import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'main_navigation.dart';

void main() {
  runApp(const FacebikApp());
}

class FacebikApp extends StatelessWidget {
  const FacebikApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      // প্রথমে লগইন স্ক্রিন দিয়ে অ্যাপ শুরু হবে, চাইলে সরাসরি MainNavigation ও দেওয়া যাবে
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const MainNavigation(),
      },
    );
  }
}
