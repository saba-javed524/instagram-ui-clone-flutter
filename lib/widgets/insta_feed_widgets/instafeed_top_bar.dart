import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/story_widgets/story_circle.dart';

class InstafeedTopBar extends StatelessWidget {
  InstafeedTopBar({required this.url, required this.accountName});

  String url;
  String accountName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                StoryCircle(
                  url: url,
                  radius1: 20,
                  radius2: 23,
                  radius3: 25,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  accountName,
                  style: kStoryAccountTextStyle.copyWith(
                      fontSize: 16.0, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Icon(FontAwesomeIcons.ellipsisVertical)
          ],
        ),
      ),
    );
  }
}
