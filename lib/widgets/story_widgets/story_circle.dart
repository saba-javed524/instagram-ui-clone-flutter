import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';

class StoryCircle extends StatelessWidget {
  StoryCircle(
      {required this.url,
      this.radius1 = 36.0,
      this.radius2 = 39.0,
      this.radius3 = 41.0,
      this.gapColor = Colors.black});

  String url;
  double radius1 = 36.0;
  double radius2 = 39.0;
  double radius3 = 41.0;
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
        backgroundColor: Colors.transparent,
        radius: radius3,
        child: CircleAvatar(
          backgroundColor: gapColor,
          radius: radius2,
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: radius1,
          ),
        ),
      ),
    );
  }
}
