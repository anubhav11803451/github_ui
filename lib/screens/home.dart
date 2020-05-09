import 'package:flutter/material.dart';

import 'package:gitub_ui/screens/homebody.dart';
import 'package:gitub_ui/widgets/bottom_app_bar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomFloatButton(isFactive: true),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.grey,
      body: HomeBody(),
    );
  }
}