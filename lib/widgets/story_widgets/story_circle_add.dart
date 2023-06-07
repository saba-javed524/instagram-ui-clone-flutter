import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';

class StoryCircleAdd extends StatelessWidget {
  StoryCircleAdd({required this.url, required this.accountName});

  String? url;
  String? accountName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7.0),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 41.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(url!),
                  radius: 38.0,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: kAddStoryColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          accountName!,
          style: kStoryAccountTextStyle,
        ),
      ],
    );
  }
}
