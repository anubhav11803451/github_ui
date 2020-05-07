import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      // navigateAfterSeconds: new login(),
      image: new Image.asset('assets/logo/github.png'),
      loadingText: Text(
        'Hang In There .. !!',
        style: GoogleFonts.handlee(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      backgroundColor: Colors.white,
      photoSize: 80,
    );
  }
}
