import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_flutter/theme/constants.dart';
import 'package:instagram_flutter/widgets/liked_by/liked_by_account.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.08, color: Colors.white.withOpacity(0.8)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.house,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.search,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.squarePlus,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.heart,
                  size: 27,
                  color: Colors.white,
                ),
              ),
              LikedByAccount(
                url: kUrls[0],
                radius1: 16,
                radius2: 18,
              )
            ],
          ),
        ),
      ),
    );
    // return BottomNavigationBar(
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: Colors.black,
    //   selectedItemColor: Colors.white,
    //   unselectedItemColor: Colors.white,
    //   selectedFontSize: 12.0,
    //   unselectedFontSize: 12.0,
    //   showSelectedLabels: false,
    //   showUnselectedLabels: false,
    //   onTap: null,
    //   items: const [
    //     BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.home,
    //           size: 35,
    //         ),
    //         label: ''),
    //     BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.search,
    //           size: 35,
    //         ),
    //         label: ''),
    //     BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.video_call,
    //           size: 35,
    //         ),
    //         label: ''),
    //     BottomNavigationBarItem(
    //         icon: ImageIcon(
    //           Icons.shopping_bag,
    //           size: 30,
    //         ),
    //         label: ''),
    //     BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.search,
    //           size: 35,
    //         ),
    //         label: ''),
    //   ],
    // );
  }
}
