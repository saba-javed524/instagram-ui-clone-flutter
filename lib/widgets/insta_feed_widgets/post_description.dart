import 'package:flutter/cupertino.dart';
import 'package:instagram_flutter/theme/constants.dart';

class PostDescription extends StatelessWidget {
  PostDescription({this.postedBy, this.postDescription});

  String? postedBy;
  String? postDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$postedBy  ',
            style: kFeedAccountName,
          ),
          Text(
            postDescription!,
            style: kStoryAccountTextStyle,
          )
        ],
      ),
    );
  }
}
