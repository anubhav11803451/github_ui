import 'package:flutter/material.dart';

import 'package:gitub_ui/pages/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new WelcomePage(),
      image: new Image.asset('assets/logo/github8.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
      photoSize: 55,
    );
  }
}
