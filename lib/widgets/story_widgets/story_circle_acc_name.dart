import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/story_widgets/story_circle.dart';

class StoryCircleAndAccountName extends StatelessWidget {
  StoryCircleAndAccountName({required this.url, required this.accountName});

  String url = '';
  String accountName = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: StoryCircle(
            url: url,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          accountName,
          style: kStoryAccountTextStyle,
        ),
      ],
    );
  }
}
