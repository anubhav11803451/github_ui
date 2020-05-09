import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gitub_ui/widgets/CategoryCard.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                  Text(
                    'GitHub\nHey Anubhav :)',
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 45),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 2.1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: 'Repositories',
                          img: 'assets/images/book1.png',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Pull Request',
                          img: 'assets/images/pull.png',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Issue',
                          img: 'assets/images/issue.png',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Organizations',
                          img: 'assets/images/organ.png',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}



