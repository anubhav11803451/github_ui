import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    'Good Morning \nAnubhav :)',
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
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
                        ),
                        CategoryCard(
                          title: 'Pull Request',
                          img: 'assets/images/pull.png',
                        ),
                        CategoryCard(
                          title: 'Issue',
                          img: 'assets/images/issue.png',
                        ),
                        CategoryCard(
                          title: 'Organizations',
                          img: 'assets/images/organ.png',
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

class CategoryCard extends StatelessWidget {
  final String title;
  final String img;
  const CategoryCard({
    Key key,
    this.title,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          // Spacer(),
          Image.asset(
            img,
            fit: BoxFit.contain,
            height: 90,
          ),
          Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
