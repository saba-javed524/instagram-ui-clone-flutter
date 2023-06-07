import 'package:flutter/cupertino.dart';
import 'package:instagram_flutter/widgets/liked_by/liked_by_account.dart';

class LikedByAccounts extends StatelessWidget {
  LikedByAccounts(
      {required this.likedByAccount1, required this.likedByAccount2});
  String likedByAccount1;
  String likedByAccount2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        width: 50,
        child: Stack(
          children: [
            Positioned(
              child: LikedByAccount(url: likedByAccount1),
              left: 18,
            ),
            LikedByAccount(url: likedByAccount2),
          ],
        ),
      ),
    );
  }
}
