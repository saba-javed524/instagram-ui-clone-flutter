import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstafeedBottomBarNormal extends StatelessWidget {
  InstafeedBottomBarNormal();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.heart,
                size: 25.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Icon(
                FontAwesomeIcons.comment,
                size: 25.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Icon(
                FontAwesomeIcons.paperPlane,
                size: 23.0,
              ),
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Icon(
            Icons.bookmark_border,
            size: 25.0,
          )
        ],
      ),
    );
  }
}
