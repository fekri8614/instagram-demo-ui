import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';

class ShopPageButton extends StatelessWidget {
  const ShopPageButton({super.key, required this.text});

  final String text;

  static final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    elevation: 2,
    primary: ColorConstants.white,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {},
        style: _buttonStyle,
        child: Text(
          text,
          style: TextStyle(color: ColorConstants.black),
        ),
      ),
    );
  }
}
