import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepoCard extends StatefulWidget {
  final int index;
  final String title;
  final int count;

  RepoCard(this.index, this.title, this.count);

  @override
  _RepoCardState createState() => _RepoCardState();
}

class _RepoCardState extends State<RepoCard> {
  int selectedRepoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRepoIndex = widget.index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        height: 130.0,
        width: 170.0,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 5.0
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 15, right: 15),
              child: Text(
                widget.title,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
