import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/text_constants.dart';

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: <Widget>[
            const CircleAvatar(
              radius: 46,
              backgroundImage: AssetImage('assets/story_bg.png'),
              child: CircleAvatar(
                radius: 44,
                backgroundImage: AssetImage('assets/white_bg.png'),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/myprofile.jpg'),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 2,
              child: CircleAvatar(
                radius: 14,
                backgroundColor: ColorConstants.white,
                child: const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/addstory.png'),
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Column(
              children: [
                Text(
                  TextConstants.post_no,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  TextConstants.post,
                  style: TextStyle(fontSize: 16, letterSpacing: 0.4),
                ),
                SizedBox(width: 80),
              ],
            ),
            Column(
              children: [
                Text(
                  TextConstants.followers_num,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  TextConstants.followers,
                  style: TextStyle(fontSize: 16, letterSpacing: 0.4),
                ),
                SizedBox(width: 80),
              ],
            ),
            Column(
              children: [
                Text(
                  TextConstants.following_num,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  TextConstants.following,
                  style: TextStyle(fontSize: 16, letterSpacing: 0.4),
                ),
                SizedBox(width: 80),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
