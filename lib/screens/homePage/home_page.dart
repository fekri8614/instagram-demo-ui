import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/screens/homePage/story_profile.dart';
import 'package:instagram_ui/screens/profilePage/my_profile.dart';
import 'package:instagram_ui/screens/reelsPage/reels_page.dart';
import 'package:instagram_ui/screens/serachPage/search_page.dart';
import 'package:instagram_ui/screens/shopPage/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widget = [
    StoryProfile(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    MyProfilePage(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: _widget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home.svg',
              height: 24,
            ),
            label: TextConstants.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/search.svg',
              height: 24,
            ),
            label: TextConstants.search,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/reels.svg',
              height: 24,
            ),
            label: TextConstants.reels,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/shop.svg',
              height: 24,
            ),
            label: TextConstants.store,
          ),
          BottomNavigationBarItem(
            icon: const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/myprofile.png'),
            ),
            backgroundColor: ColorConstants.black,
            label: TextConstants.profile,
          ),
        ],
        iconSize: 30,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.black,
        backgroundColor: ColorConstants.white,
        unselectedItemColor: ColorConstants.black45,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
      ),
    );
  }
}
