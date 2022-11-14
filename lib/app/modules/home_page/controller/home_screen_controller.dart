import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  List<String> readingTabs = ["TODAY", "QURAN", "HADITH", "MORE"];

  int selectedIndex = 0;

  onTapBottomButton(int index) {
    selectedIndex = index;
    update();
  }
}
