import 'package:dummy_project/app/modules/home_page/controller/home_screen_controller.dart';
import 'package:dummy_project/app/modules/home_page/view/widgets/custom_bottom_nav_bar.dart';
import 'package:dummy_project/app/modules/home_page/view/widgets/custom_tabbar.dart';
import 'package:dummy_project/app/modules/home_page/view/widgets/custom_tabbarview.dart';
import 'package:dummy_project/app/modules/home_page/view/widgets/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeScreenCotroller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: GetBuilder<HomeScreenController>(builder: (homeScreenCotroller) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: SizedBox(
                height: 35,
                child: Visibility(
                  visible:
                      homeScreenCotroller.selectedIndex == 3 ? true : false,
                  child: RefractedTabBar(
                    indicatorColor: Colors.grey,
                    // tabController: homeScreenCotroller.controller,
                    tabs: homeScreenCotroller.readingTabs.map((e) {
                      return Tab(text: e);
                    }).toList(),
                  ),
                ),
              ),
            ),
            body: RefractedTabBarView(
                // tabController: readingController.controller,
                tabViews: homeScreenCotroller.readingTabs.map((e) {
              return const HomeView();
            }).toList()),
            bottomNavigationBar: RefractedBottomNavBar(
              homeScreenCotroller: homeScreenCotroller,
            ),
          );
        }),
      ),
    );
  }
}
