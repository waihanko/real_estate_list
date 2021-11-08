import 'package:flutter/material.dart';
import 'package:real_estate_dummy/resources/colors.dart';

class TitleTextWidget extends StatelessWidget {
  final titleText;
  final Color headingColor;

  const TitleTextWidget(
      this.titleText, {
        this.headingColor = TITLE_TEXT_COLOR,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        color: headingColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
