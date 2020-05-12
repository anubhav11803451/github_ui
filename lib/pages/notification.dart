import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.blueAccent,
                    ),
                    onPressed: () {}),
              ],
            ),
          )
        ],
        title: Text(
          'Notification',
          style: GoogleFonts.openSans(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListView(
            children: <Widget>[
              
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Text(
                    'All caught up!',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
        ],
          ),
        ],
      ),
    );
  }
}
