import 'package:flutter/material.dart';

import 'package:gitub_ui/screens/homeScreenBody.dart';
import 'package:gitub_ui/widgets/bottom_app_bar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomFloatButton(isFactive: true), //defined in bottom_app_bar.dart
      bottomNavigationBar: BottomNavBar(), //defined in bottom_app_bar.dart
      backgroundColor: Colors.grey,
      body: HomeBody(),
    );
  }
}