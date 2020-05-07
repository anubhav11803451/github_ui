import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.home),
        title: Text('data', style: GoogleFonts.baloo(color: Colors.white)),
      ),
      backgroundColor: Colors.white,
    );
  }
}
