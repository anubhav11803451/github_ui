import 'package:flutter/material.dart';

import 'package:gitub_ui/screens/homebody.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomFloatItem(isFactive: true),
      bottomNavigationBar: BottomAppBar(
        elevation: 5.5,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: BottomNavItem(),
      ),
      backgroundColor: Colors.grey,
      body: HomeBody(),
    );
  }
}

class BottomFloatItem extends StatelessWidget {
  final bool isFactive;
  const BottomFloatItem({
    Key key,
    this.isFactive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        Icons.home,
        color: isFactive ? Colors.blue : Colors.black,
      ),
      backgroundColor: Colors.black87,
      elevation: 8,
      tooltip: 'New Issue',
      onPressed: () {},
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: isActive ? Colors.blue : Colors.black,
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
    );
  }
}
