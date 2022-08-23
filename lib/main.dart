import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theuiproject/Screens/app_dashboard.dart';
import 'package:theuiproject/Screens/login_screen.dart';
import 'package:theuiproject/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts.merriweather().fontFamily
      ),
    );
  }
}
