import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabcard extends StatelessWidget {
  const Tabcard({
    Key key,
    // @required String timeFormatter,
    // @required String dateFormatter,
    @required String head,
    @required String sub,
  })  : title = head,
        content = sub,
        // _timeFormatter = timeFormatter,
        // _dateFormatter = dateFormatter,
        super(key: key);

  // final _timeFormatter; //TODO refrence
  // final _dateFormatter;
  final title;
  final content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      padding: EdgeInsets.only(top:20, left: 20, right: 20, bottom: 30 ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // TODO Change its position and replace it with star count.
              // Text(
              //   _timeFormatter,
              //   style: GoogleFonts.openSans(
              //     color: Color(0xFFAFB4C6),
              //     fontSize: 13.0,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                content,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // TODO Change it to platfom eg: Dart, python
              // Text(
              //   _dateFormatter,
              //   style: GoogleFonts.openSans(
              //     color: Color(0xFFAFB4C6),
              //     fontSize: 12.0,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
