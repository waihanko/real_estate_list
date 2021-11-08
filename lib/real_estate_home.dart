import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_dummy/resources/colors.dart';
import 'package:real_estate_dummy/widgets/section_view_daft_list.dart';
import 'package:real_estate_dummy/widgets/section_view_live_list.dart';
import 'package:real_estate_dummy/widgets/section_view_title_bar.dart';
import 'package:real_estate_dummy/widgets/widget_title_text.dart';

import 'dummy_data.dart';

class RealEstateHome extends StatefulWidget {
  const RealEstateHome({Key? key}) : super(key: key);

  @override
  _RealEstateHomeState createState() => _RealEstateHomeState();
}

class _RealEstateHomeState extends State<RealEstateHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ScreenTitleBarSectionView(),
            TabBar(
              controller: _tabController,
              indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(-8.0),
                    ),
                  ),
                  color: BG_COLOR_GREY_LIGHT),
              tabs: [
                Tab(child: TitleTextWidget("Draft")),
                Tab(child: TitleTextWidget("Live")),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    color: BG_COLOR_GREY_LIGHT,
                    child: DraftList(getDummyList()),
                  ),
                  Container(
                    color: BG_COLOR_GREY_LIGHT,
                    child: LiveList(getDummyList()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
