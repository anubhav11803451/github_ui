import 'package:flutter/material.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
          )
        ],
        title: Text('Notification'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
