import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabcard extends StatelessWidget {
  const Tabcard({
    Key key,
    @required String timeFormatter,
    @required String dateFormatter,
    @required String head,
    @required String sub,
  })  : _timeFormatter = timeFormatter,
        _dateFormatter = dateFormatter,
        title = head,
        content = sub,
        super(key: key);

  final _timeFormatter;
  final _dateFormatter;
  final title;
  final content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Color(0xFFF5F7FB),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                _timeFormatter,
                style: GoogleFonts.openSans(
                  color: Color(0xFFAFB4C6),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            content,
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                _dateFormatter,
                style: GoogleFonts.openSans(
                  color: Color(0xFFAFB4C6),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}