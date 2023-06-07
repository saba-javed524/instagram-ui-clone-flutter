import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';

class TimePosted extends StatelessWidget {
  TimePosted({this.postedAgo = '17 hours ago'});
  String postedAgo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            postedAgo,
            style: kViewCommentStyle.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
