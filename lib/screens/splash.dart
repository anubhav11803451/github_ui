import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gitub_ui/pages/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new WelcomePage(),
      image: new Image.asset('assets/logo/github4.png'),
      loadingText: Text(
        'Hang In There .. !!',
        style: GoogleFonts.handlee(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
      photoSize: 55,
    );
  }
}
