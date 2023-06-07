import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/liked_by/liked_by_account.dart';

class AddComment extends StatelessWidget {
  AddComment({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: LikedByAccount(
              url: kUrls[0],
              radius1: 18,
              radius2: 20,
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(
                  color: Colors.white, fontSize: 18.0, fontFamily: 'Roboto'),
              decoration: InputDecoration(
                hintText: 'Add a comment...',
                hintStyle: kAddCommentStyle,
                border: InputBorder.none,
              ),
            ),
          ),
          TextButton(
              onPressed: null,
              child: Text(
                'Post',
                style: kAddCommentButtonStyle,
              ))
        ],
      ),
    );
  }
}
