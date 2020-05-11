import 'package:flutter/material.dart';

import 'package:gitub_ui/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

 class LoginButton extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
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
          colors: [Colors.black54, Colors.black],
        ),
      ),
        child: Text(
          'Login',
          style: GoogleFonts.openSans(fontSize: 19, color: Colors.white)
        ),
      ),
    );
   }
 }