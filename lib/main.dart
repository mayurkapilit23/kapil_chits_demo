import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kapil_chits_demo/screens/profile_screens/account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: AccountScreen(),
    );
  }
}
