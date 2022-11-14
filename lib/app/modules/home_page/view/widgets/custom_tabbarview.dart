import 'package:flutter/material.dart';

class RefractedTabBarView extends StatelessWidget {
  const RefractedTabBarView({
    Key? key,
    required this.tabViews,
    this.tabController,
  }) : super(key: key);

  final List<Widget> tabViews;
  final TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: tabViews,
    );
  }
}
