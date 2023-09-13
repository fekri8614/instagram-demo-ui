import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class MyStoryCard extends StatelessWidget {
  const MyStoryCard({
    super.key,
    required this.name,
    required this.assetImage,
    required this.addStory,
  });

  final String name;
  final String assetImage;
  final String addStory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 39,
                backgroundImage: AssetImage('assets/story_bg.png'),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(assetImage),
                ),
              ),
              Positioned(
                right: -2,
                bottom: -2,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: ColorConstants.white,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(addStory),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
