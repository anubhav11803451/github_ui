import 'package:flutter/material.dart';

import 'package:gitub_ui/pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 7),
                blurRadius: 8,
                spreadRadius: -1
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.black, Colors.black54],
          ),
        ),
        child: Text(
          'Sign Up',
          style: GoogleFonts.openSans(fontSize: 19, color: Colors.white),
        ),
      ),
    );
  }
}
