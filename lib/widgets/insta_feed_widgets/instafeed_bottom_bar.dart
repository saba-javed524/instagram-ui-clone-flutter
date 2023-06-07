import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstafeedBottomBar extends StatelessWidget {
  InstafeedBottomBar({this.currentIndex = 0, required this.images});
  int currentIndex = 0;
  List images;

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
          Expanded(
            child: Row(
              children: images.map(
                (urlOfItem) {
                  int index = images.indexOf(urlOfItem);
                  return Container(
                    width: currentIndex == index ? 7.0 : 6.0,
                    height: currentIndex == index ? 7.0 : 6.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? Color(0xFF0195f7)
                          : Color(0xFF555555),
                    ),
                  );
                },
              ).toList(),
            ),
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
