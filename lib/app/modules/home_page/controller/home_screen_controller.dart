import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  List<String> readingTabs = ["TODAY", "QURAN", "HADITH", "MORE"];

  int selectedIndex = 0;
  int tabIndex = 0;

  onTapBottomButton(int index) {
    selectedIndex = index;
    update();
  }

  onTapTabBar(int index) {
    tabIndex = index;
    update();
  }

  String getScreen() {
    switch (selectedIndex) {
      case 0:
        return "DiscoverScreen";
      case 1:
        return "Explore Screen";
      case 2:
        return "Panel Screen";
      case 3:
        return getTabBarScreen();
      default:
        return "Profile Screen";
    }
  }

  String getTabBarScreen() {
    switch (tabIndex) {
      case 0:
        return "TodayTab View";
      case 1:
        return "QuranTab View";
      case 2:
        return "Hadith Tab View";
      default:
        return "More View";
    }
  }
}
