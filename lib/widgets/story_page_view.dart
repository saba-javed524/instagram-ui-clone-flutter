import 'package:flutter/material.dart';
import "package:story_view/story_view.dart";

class StoryPageView extends StatefulWidget {
  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.text(
        title: "Hello world!\nJust an insta-like story! \n\nTap!",
        backgroundColor: Colors.blueGrey,
      ),
      StoryItem.pageImage(
          url:
              "https://i.pinimg.com/564x/d0/a6/b2/d0a6b2eaada593ad7d43e67abd686059.jpg",
          controller: controller),
      StoryItem.pageImage(
          url: "https://wp-modula.com/wp-content/uploads/2018/12/gifgif.gif",
          controller: controller,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
