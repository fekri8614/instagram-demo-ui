import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/homePage/home_page.dart';
import 'package:instagram_ui/screens/homePage/posts_page.dart';
import 'package:instagram_ui/screens/homePage/story_profile.dart';
import 'package:instagram_ui/screens/profilePage/my_profile.dart';
import 'package:instagram_ui/screens/reelsPage/reels_page.dart';
import 'package:instagram_ui/screens/serachPage/search_page.dart';
import 'package:instagram_ui/screens/shopPage/shop_page.dart';
import 'package:instagram_ui/widgets/profile_page/my_profile_buttons.dart';
import 'package:instagram_ui/widgets/profile_page/my_tags.dart';
import 'package:instagram_ui/widgets/reels/reels_contents.dart';
import 'package:instagram_ui/widgets/reels/video_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
