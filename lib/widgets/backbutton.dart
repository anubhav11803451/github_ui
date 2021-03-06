import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 28,
              ),
            ),
            // Text(
            //   'Back',
            //   style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            // ),
          ],
        ),
      ),
    );
  }
}
