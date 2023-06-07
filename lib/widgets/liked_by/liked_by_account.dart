import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';

class LikedByAccount extends StatelessWidget {
  LikedByAccount({required this.url, this.radius1 = 13.0, this.radius2 = 15.0});

  String url;
  double radius1 = 13.0;
  double radius2 = 15.0;
  Color gapColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: kGradientRingColors,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: gapColor,
        radius: radius2,
        child: CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: radius1,
        ),
      ),
    );
  }
}
