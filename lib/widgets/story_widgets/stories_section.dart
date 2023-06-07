import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/story_page_view.dart';
import 'package:instagram_flutter/widgets/story_widgets/story_circle_acc_name.dart';
import 'package:instagram_flutter/widgets/story_widgets/story_circle_add.dart';

class Stories extends StatelessWidget {
  Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StoryCircleAdd(url: kUrls[0], accountName: kAccountNames[0]),
          for (int x = 1; x <= 5; x++)
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryPageView())),
              child: StoryCircleAndAccountName(
                url: kUrls[x],
                accountName: kAccountNames[x],
              ),
            ),
        ],
      ),
    );
  }
}
