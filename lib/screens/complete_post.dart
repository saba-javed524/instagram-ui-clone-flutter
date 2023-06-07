import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/add_comment_bar.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/instafeed_top_bar.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/post_description.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/time_posted.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/view_comments.dart';
import 'package:instagram_flutter/widgets/liked_by/liked_by_bar.dart';

class CompletePost extends StatelessWidget {
  CompletePost({
    required this.url,
    required this.accountName,
    required this.likedBy,
    required this.noOfLikes,
    required this.noofCommets,
    required this.postedBy,
    required this.postedAgo,
    required this.postDescription,
    required this.feedImage,
    required this.likedByAccount1,
    required this.likedByAccount2,
  });

  String url;
  String accountName;
  String likedBy;
  String noOfLikes;
  String postedBy;
  String postedAgo;
  String postDescription;
  String likedByAccount1;
  String likedByAccount2;
  String noofCommets;
  Widget feedImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          InstafeedTopBar(
            url: url,
            accountName: accountName,
          ),
          feedImage,
          LikedBy(
            likedBy: likedBy,
            noOfLikes: noOfLikes,
            likedByAccount1: likedByAccount1,
            likedByAccount2: likedByAccount2,
          ),
          PostDescription(
            postedBy: postedBy,
            postDescription: postDescription,
          ),
          ViewComments(
            noofCommets: noofCommets,
          ),
          AddComment(),
          TimePosted(
            postedAgo: postedAgo,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
