import 'package:flutter/material.dart';
import 'package:gitub_ui/widgets/signupButton.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gitub_ui/widgets/designed_container.dart';
import 'package:gitub_ui/widgets/loginButton.dart';
import 'package:gitub_ui/pages/signup.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  Widget _label() {
    return Container(
        margin: EdgeInsets.only(top: 40, bottom: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Icon(Icons.fingerprint, size: 55, color: Colors.black),
            SizedBox(
              height: 20,
            ),
            Text(
              'Touch ID',
              style: GoogleFonts.openSans(
                fontSize: 12,
                color: Colors.black,
                decoration: TextDecoration.underline,
                ),
            ),
          ],
        ));
  }

  Widget _icon() {
    return Image.asset(
      'assets/logo/github.png',
      height: 120,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 100,),
                    _icon(),
                    SizedBox(height: 50,),
                    LoginButton(),
                    SizedBox( height: 30,),
                    SignUpButton(),
                    SizedBox(height: 30,),
                    _label(),
                  ],
                ),
              ),
              Positioned(
                top: -MediaQuery.of(context).size.height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer(),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
