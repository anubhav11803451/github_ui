import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        title: Text('GitHub', style: GoogleFonts.baloo(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: Drawer(
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
        elevation: 8,
        tooltip: 'New Issue',
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5.5,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
