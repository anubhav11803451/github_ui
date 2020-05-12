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
                      Icons.inbox,
                      // color: Colors.black,
                    ),
                    onPressed: () {})
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
      body: SafeArea(
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
