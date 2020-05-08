import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:gitub_ui/model/repo.dart';

class Body extends StatefulWidget {
  @override
  _BodyScreen createState() => _BodyScreen();
}

class _BodyScreen extends State<Body> with SingleTickerProviderStateMixin {
  int selectedRepoIndex = 0;
  TabController _tabController;
  final DateFormat _dateFormatter = DateFormat('dd MMM');
  final DateFormat _timeFormatter = DateFormat('h:mm');

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
          color:
              selectedRepoIndex == index ? Colors.black87 : Color(0xFFF5F7FB),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            selectedRepoIndex == index
                ? BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 10.0)
                : BoxShadow(color: Colors.transparent),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  color: selectedRepoIndex == index
                      ? Colors.white
                      : Color(0xFFAFB4C6),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                count.toString(),
                style: GoogleFonts.openSans(
                  color:
                      selectedRepoIndex == index
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 5.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 1.0),
              Text(
                'Favorites',
                style: GoogleFonts.openSans(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          height: 255.0,
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
          padding: EdgeInsets.only(left: 12.0),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xFFAFB4C6),
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Repositories',
                  style: GoogleFonts.openSans(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Pull Request',
                  style: GoogleFonts.openSans(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Organizations',
                  style: GoogleFonts.openSans(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Color(0xFFF5F7FB),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    repos[0].title,
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    _timeFormatter.format(repos[0].date),
                    style: GoogleFonts.openSans(
                      color: Color(0xFFAFB4C6),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                repos[0].content,
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    _dateFormatter.format(repos[0].date),
                    style: GoogleFonts.openSans(
                      color: Color(0xFFAFB4C6),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Color(0xFFF5F7FB),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    repos[1].title,
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    _timeFormatter.format(repos[1].date),
                    style: GoogleFonts.openSans(
                      color: Color(0xFFAFB4C6),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                repos[1].content,
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    _dateFormatter.format(repos[0].date),
                    style: GoogleFonts.openSans(
                      color: Color(0xFFAFB4C6),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
