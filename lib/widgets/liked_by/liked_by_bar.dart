import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/liked_by/liked_by_multiple_accounts.dart';

class LikedBy extends StatelessWidget {
  LikedBy(
      {required this.likedBy,
      required this.noOfLikes,
      required this.likedByAccount1,
      required this.likedByAccount2});

  String likedBy = kAccountNames[2];
  String noOfLikes = '3';
  String likedByAccount1;
  String likedByAccount2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LikedByAccounts(
            likedByAccount1: likedByAccount1,
            likedByAccount2: likedByAccount2,
          ),
          Text(
            'Liked by $likedBy and $noOfLikes others',
            style: kFeedAccountName.copyWith(fontSize: 15),
          )
        ],
      ),
    );
  }
}
