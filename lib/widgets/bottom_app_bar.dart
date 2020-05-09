import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1,
      color: Colors.transparent,
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
        color: isFactive ? Colors.blue : Colors.black,
      ),
      backgroundColor: Colors.transparent,
      elevation: 1,
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
              Icons.search,
              color: isActive ? Colors.blue : Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: isActive ? Colors.blue : Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
