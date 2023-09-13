import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';

class MyProfileButtons extends StatelessWidget {
  const MyProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 5),
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith((_) {
                  return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  );
                }),
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(ColorConstants.white),
              ),
              onPressed: () {},
              child: Text(
                TextConstants.editProfile,
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConstants.black,
                  letterSpacing: .4,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith((_) {
                  return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5));
                }),
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(ColorConstants.white),
              ),
              onPressed: () {},
              child: Icon(Icons.person_add_alt, color: ColorConstants.black),
            ),
          ),
        )
      ],
    );
  }
}
