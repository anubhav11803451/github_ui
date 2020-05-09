import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

import 'package:gitub_ui/model/repo.dart';
import 'package:gitub_ui/widgets/tabbar.dart';
import 'package:gitub_ui/widgets/tabCard.dart';
import 'package:gitub_ui/widgets/backbutton.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody>
    with SingleTickerProviderStateMixin {
  int selectedRepoIndex = 0;
  TabController _tabController;
  // final DateFormat _dateFormatter = DateFormat('dd MMM');
  // final DateFormat _timeFormatter = DateFormat('h:mm');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  Widget _repoCard(int index, String title, int count) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRepoIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        height: 240.0,
        width: 175.0,
        decoration: BoxDecoration(
          color: selectedRepoIndex == index ? Colors.black : Color(0xFFF5F7FB),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            selectedRepoIndex == index
                ? BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 5),
                    blurRadius: 6.0)
                : BoxShadow(color: Colors.black),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5.0, left: 15),
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  color:
                      selectedRepoIndex == index ? Colors.white : Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.favorite_border,
                color: selectedRepoIndex == index ? Colors.white : Colors.black,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 1.0),
          Backbutton(),
          Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 85,
                ),
                Text(
                  'Anubhav Gupta',
                  style: GoogleFonts.openSans(fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 1.0),
                Text(
                  'Popular',
                  style: GoogleFonts.openSans(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.0),
          Container(
            height: 130.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 20.0);
                }
                return _repoCard(
                  index - 1,
                  categories.keys.toList()[index - 1],
                  categories.values.toList()[index - 1],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.0),
            child: Tabbar(tabController: _tabController),
          ),
          SizedBox(height: 20.0),
          Tabcard(
            // timeFormatter: _timeFormatter.format(repos[0].date),
            // dateFormatter: _dateFormatter.format(repos[0].date),
            head: repos[0].title,
            sub: repos[0].content,
          ),
          SizedBox(height: 20.0),
          Tabcard(
            // timeFormatter: _timeFormatter.format(repos[1].date),
            // dateFormatter: _dateFormatter.format(repos[1].date),
            head: repos[1].title,
            sub: repos[1].content,
          ),
        ],
      ),
    );
  }
}