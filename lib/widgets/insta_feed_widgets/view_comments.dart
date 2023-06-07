import 'package:flutter/cupertino.dart';
import 'package:instagram_flutter/theme/constants.dart';

class ViewComments extends StatelessWidget {
  ViewComments({this.noofCommets = '2'});
  String noofCommets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Row(
        children: [
          Text(
            'View all $noofCommets comments',
            style: kViewCommentStyle,
          )
        ],
      ),
    );
  }
}
