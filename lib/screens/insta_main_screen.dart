import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/bottom_app_bar/bottom_app_bar.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/insta_feed.dart';
import 'package:instagram_flutter/widgets/story_widgets/stories_section.dart';

class InstaScreen extends StatelessWidget {
  const InstaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: MyBottomAppBar(),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 0.08, color: Colors.white.withOpacity(0.8)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                //first row starts here!
                child: Row(
                  children: [
                    //Instagram text and arrow starts here!
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          'Instagram',
                          style: kInstaStyle,
                        ),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                    //Instagram text and arrow starts here!
                    // Last three icons starts here!
                    const Spacer(flex: 6),
                    const Icon(FontAwesomeIcons.squarePlus),
                    const Spacer(),
                    const Icon(FontAwesomeIcons.heart),
                    const Spacer(),
                    const Icon(FontAwesomeIcons.facebookMessenger),
                    // Last three icons ends here!
                  ],
                ),
                //first row ends here!
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //Stories section starts here
                  Stories(),
                  //Stories section ends here
                  //Feed section starts here
                  // for (var i = 0; i <= 2; i++)
                  InstaFeed(),

                  //Feed section ends here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
