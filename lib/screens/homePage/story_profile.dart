import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/screens/homePage/posts_page.dart';

class StoryProfile extends StatelessWidget {
  const StoryProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color color = Colors.white;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ColorConstants.white),
            ),
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: ColorConstants.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        'assets/instagram.png',
                        fit: BoxFit.cover,
                        height: size.height * 0.06,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/add.svg',
                        fit: BoxFit.cover,
                        height: size.height * .03,
                      ),
                      SizedBox(width: size.width * .05),
                      SvgPicture.asset(
                        'assets/like.svg',
                        fit: BoxFit.cover,
                        height: size.height * .03,
                      ),
                      SizedBox(width: size.width * 0.05),
                      SvgPicture.asset(
                        'assets/messenger.svg',
                        fit: BoxFit.cover,
                        height: size.height * .03,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: PostsPage(),
    );
  }
}
