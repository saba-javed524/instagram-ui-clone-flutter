import 'package:flutter/material.dart';
import 'package:instagram_flutter/screens/complete_post.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/feed_pictures_slider.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/postB.dart';

class InstaFeed extends StatelessWidget {
  const InstaFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //First Post Starts Here!
        CompletePost(
          url: kUrls[1],
          accountName: kAccountNames[1],
          likedBy: kAccountNames[2],
          noOfLikes: '15',
          noofCommets: '2',
          postedBy: kAccountNames[1],
          postedAgo: '17 hours ago',
          postDescription: 'Day Out!',
          feedImage: PicturesSlider(),
          likedByAccount1: kUrls[4],
          likedByAccount2: kUrls[2],
        ),

        //First Post Ends Here!

        //Second Post Starts Here!
        CompletePost(
          url: kUrls[2],
          accountName: kAccountNames[2],
          likedBy: kAccountNames[3],
          noOfLikes: '54',
          noofCommets: '16',
          postedAgo: '2 days ago',
          postedBy: kAccountNames[2],
          postDescription: 'DRAGONS BLOOD!!!',
          feedImage: PostB(),
          likedByAccount1: kUrls[5],
          likedByAccount2: kUrls[3],
        ),
        //Second Post Ends Here!
      ],
    );
  }
}
