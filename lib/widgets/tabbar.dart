import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
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
    );
  }
}