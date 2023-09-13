import 'package:flutter/material.dart';
import '../../constants/text_constants.dart';
import '../../widgets/posts/home_posts.dart';
import '../../widgets/story/my_story_card.dart';
import '../../widgets/story/story_card.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const MyStoryCard(
                  name: TextConstants.yourstory,
                  assetImage: 'assets/myprofile.jpg',
                  addStory: 'assets/addstory.png',
                ),
                StoryCard(
                  name: TextConstants.gag,
                  assetImage: 'assets/gag.png',
                ),
                StoryCard(
                  name: TextConstants.eceersunar,
                  assetImage: 'assets/myprofile.jpg',
                ),
                StoryCard(
                  name: TextConstants.mstturkkalesi,
                  assetImage: 'assets/mstturkkalesi.png',
                ),
                StoryCard(
                  name: TextConstants.yosoymert,
                  assetImage: 'assets/yosoymert.png',
                ),
                StoryCard(
                  name: TextConstants.yagizdo,
                  assetImage: 'assets/yagizdo.png',
                ),
                StoryCard(
                  name: TextConstants.rihanna,
                  assetImage: 'assets/rihanna.png',
                ),
                StoryCard(
                  name: TextConstants.jacobelordi,
                  assetImage: 'assets/jacobelordi.png',
                ),
                StoryCard(
                  name: TextConstants.zendaya,
                  assetImage: 'assets/zendaya.png',
                ),
                StoryCard(
                  name: TextConstants.americanstyle,
                  assetImage: 'assets/americanstyle.png',
                ),
              ],
            ),
          ),
          const Column(
            children: [
              SizedBox(height: 20),
              Posts(
                personProfilePhoto: 'assets/gag.png',
                personName: TextConstants.gag,
                location: TextConstants.somewhereonearth,
                personPost: 'assets/dart.png',
                numberOfLikes: '7852',
                personalComment: TextConstants.having_Fun_Dash,
                personalCommentIcon: 'assets/blue_heart.png',
                timeText: TextConstants.timeText1,
              ),
              Posts(
                  personProfilePhoto: 'assets/myimagepost.jpg',
                  personName: TextConstants.ecembostancioglu,
                  location: TextConstants.izmir,
                  personPost: 'assets/myimagepost.jpg',
                  numberOfLikes: '824',
                  personalComment: 'Summer Sunset ',
                  personalCommentIcon: 'assets/sun_icon.png',
                  timeText: TextConstants.timeText2),
              Posts(
                  personProfilePhoto: 'assets/mstturkkalesi.png',
                  personName: TextConstants.mstturkkalesi,
                  location: TextConstants.keysighttech,
                  personPost: 'assets/mst_post.png',
                  numberOfLikes: '462',
                  personalComment: TextConstants.keysight,
                  personalCommentIcon: 'assets/high_voltage_icon.png',
                  timeText: TextConstants.timeText3),
              Posts(
                  personProfilePhoto: 'assets/myprofile.jpg',
                  personName: TextConstants.eceersunar,
                  location: TextConstants.alacati,
                  personPost: 'assets/myprofile.jpg',
                  numberOfLikes: '546',
                  personalComment: TextConstants.eceComment,
                  personalCommentIcon: 'assets/comment_heart_icon.png',
                  timeText: TextConstants.timeText4),
              Posts(
                  personProfilePhoto: 'assets/yagizdo.png',
                  personName: TextConstants.yagizdo,
                  location: TextConstants.istanbul,
                  personPost: 'assets/yagizdo.png',
                  numberOfLikes: '346',
                  personalComment: 'Flutter Dev',
                  personalCommentIcon: 'assets/laptop_icon.png',
                  timeText: TextConstants.timeText5)
            ],
          )
        ],
      ),
    );
  }
}
