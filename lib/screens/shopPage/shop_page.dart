import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui/constants/color_constants.dart';

import '../../constants/text_constants.dart';
import '../../model/search_contents.dart';
import '../../widgets/shop_page_button/shop_page_button.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          TextConstants.shop,
          style: TextStyle(
            color: ColorConstants.black,
            fontSize: 18,
          ),
        ),
        backgroundColor: ColorConstants.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  'assets/bookmark.svg',
                  color: ColorConstants.black,
                  height: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.menu,
                  color: ColorConstants.black,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.grey_200,
                border: Border.all(color: ColorConstants.grey_200),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: CupertinoSearchTextField(
                decoration: BoxDecoration(
                  color: ColorConstants.grey_200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  ShopPageButton(text: TextConstants.shops),
                  ShopPageButton(text: TextConstants.videos),
                  ShopPageButton(text: TextConstants.picks),
                  ShopPageButton(text: TextConstants.collections),
                  ShopPageButton(text: TextConstants.guides),
                ],
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: content.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 4,
                childAspectRatio: 1,
              ),
              itemBuilder: (_, index) {
                return GridTile(
                    child:
                        Image.asset(content[index].image, fit: BoxFit.cover));
              },
            ),
          ],
        ),
      ),
    );
  }
}
