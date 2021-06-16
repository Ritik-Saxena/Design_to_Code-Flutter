import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AmazonBrowser());

class AmazonBrowser extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: GoogleFonts.yantramanav().fontFamily),
      debugShowCheckedModeBanner: false,
    );
  }
}
