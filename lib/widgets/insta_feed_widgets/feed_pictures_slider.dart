import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/insta_feed_widgets/instafeed_bottom_bar.dart';

class PicturesSlider extends StatefulWidget {
  PicturesSlider();

  @override
  State<PicturesSlider> createState() => _PicturesSliderState();
}

class _PicturesSliderState extends State<PicturesSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height / 2;
    int currentImagesNumber = _currentIndex + 1;
    String currentImage = currentImagesNumber.toString();
    String totalImages = kPostAImages.length.toString();

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.0,
            height: height,
            scrollDirection: Axis.horizontal,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: kPostAImages
              .map(
                (item) => Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: height,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$currentImage / $totalImages',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
        InstafeedBottomBar(
          currentIndex: _currentIndex,
          images: kPostAImages,
        ),
      ],
    );
  }
}
