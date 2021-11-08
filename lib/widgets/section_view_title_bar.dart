import 'package:flutter/material.dart';
import 'package:real_estate_dummy/resources/colors.dart';
import 'package:real_estate_dummy/widgets/widget_title_text.dart';

class ScreenTitleBarSectionView extends StatelessWidget {
  const ScreenTitleBarSectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RawMaterialButton(
            onPressed: () => {},
            elevation: 0,
            constraints: BoxConstraints(),
            shape: CircleBorder(),
            //circular button
            fillColor: BG_COLOR_GREY_LIGHT,
            splashColor: Colors.red,
            highlightColor: Colors.grey,
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xff616261),
            ),
            padding: EdgeInsets.all(8),
          ),
          SizedBox(
            width: 12.0,
          ),
          TitleTextWidget("My Properties"),
        ],
      ),
    );
  }
}
