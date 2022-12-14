import 'package:dummy_project/app/modules/home_page/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RefractedTabBar extends StatelessWidget {
  RefractedTabBar({
    Key? key,
    required this.tabs,
    this.tabController,
    this.indicatorColor,
  }) : super(key: key);

  final List<Widget> tabs;
  final TabController? tabController;
  final Color? indicatorColor;

  final homeController = Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: (value) {
          homeController.onTapTabBar(value);
        },
        labelPadding: const EdgeInsets.all(2),
        controller: tabController,
        indicator: BoxDecoration(
          color: indicatorColor ?? Colors.white.withOpacity(.2),
          border: const Border(
            bottom: BorderSide(width: 2, color: Colors.grey),
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: tabs);
  }
}
