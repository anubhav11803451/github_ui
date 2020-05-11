import 'package:flutter/material.dart';

import 'package:gitub_ui/pages/profile.dart';
import 'package:gitub_ui/pages/notification.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1,
      color: Colors.black,
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: BottomNavItem(),
    );
  }
}

class BottomFloatButton extends StatelessWidget {
  final bool isFactive;
  const BottomFloatButton({
    Key key,
    this.isFactive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        Icons.home,
        color: isFactive ? Colors.blueAccent : Colors.black,
      ),
      backgroundColor: Colors.black,
      elevation: 5,
      tooltip: 'Home',
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 30,
              color: isActive ? Colors.blueAccent : Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationBody()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
              color: isActive ? Colors.blueAccent : Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileBody()));
            },
          ),
        ],
      ),
    );
  }
}
