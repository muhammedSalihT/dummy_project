import 'package:flutter/material.dart';

class RefractedTabBar extends StatelessWidget {
  const RefractedTabBar({
    Key? key,
    required this.tabs,
    this.tabController,
    this.indicatorColor,
    this.onTabTapping,
  }) : super(key: key);

  final List<Widget> tabs;
  final TabController? tabController;
  final Color? indicatorColor;
  final void Function(int)? onTabTapping;
  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTabTapping,
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
