import 'package:flutter/material.dart';

import 'package:gitub_ui/pages/widgets/custom_clipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: 0.6 / 2.5,
        child: ClipPath(
          clipper: ClipPainter(),
          child: Container(
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width *1.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey,Colors.black]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
