import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

import 'package:gitub_ui/model/repo.dart';
import 'package:gitub_ui/widgets/tabbar.dart';
import 'package:gitub_ui/widgets/tabCard.dart';
import 'package:gitub_ui/widgets/repoCard.dart';
import 'package:gitub_ui/widgets/backbutton.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // final DateFormat _dateFormatter = DateFormat('dd MMM');
  // final DateFormat _timeFormatter = DateFormat('h:mm');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 1.0),
          Backbutton(),
          Padding(
            padding: EdgeInsets.all(1),
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
          ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.place,
                    color: Colors.black45,
                  ),
                  Text(
                    'Gorakhpur,India',
                    style: GoogleFonts.openSans(color: Colors.black54),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.link,
                    color: Colors.black45,
                  ),
                  Text(
                    '\thttps://linkedin.com/anubhav_11803451',
                    style: GoogleFonts.openSans(color: Colors.black45),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 1.0),
                // Icon(Icons.),
                Text(
                  'Pinned',
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
            padding: EdgeInsets.only(left: 0, right: 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 5.0);
                }
                return RepoCard(
                  index - 1,
                  categories.keys.toList()[index - 1],
                  categories.values.toList()[index - 1],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.0),
            child: Tabbar(tabController: _tabController), //TabBar is called Here
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
          SizedBox(height: 20,),
          Tabcard(head: repos[2].title, sub: repos[2].content)
        ],
      ),
    );
  }
}
