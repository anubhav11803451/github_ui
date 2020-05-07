import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('GitHub', style: GoogleFonts.baloo(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(50),
          color: Colors.black38,
          child: Text('data'),
          ),
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
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
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
