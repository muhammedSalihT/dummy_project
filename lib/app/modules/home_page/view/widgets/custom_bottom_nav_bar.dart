import 'package:dummy_project/app/modules/home_page/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';

class RefractedBottomNavBar extends StatelessWidget {
  const RefractedBottomNavBar({
    Key? key, required this.homeScreenCotroller,
  }) : super(key: key);

  final HomeScreenController homeScreenCotroller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(color: Colors.red),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      currentIndex: homeScreenCotroller.selectedIndex,
      onTap: (index) {
        homeScreenCotroller.onTapBottomButton(index);
      },
      items: [
        BottomNavigationBarItem(
          label: "Discover",
          icon: Icon(homeScreenCotroller.selectedIndex == 0
              ? (Icons.explore)
              : Icons.explore_outlined),
        ),
        BottomNavigationBarItem(
          label: "Explore",
          icon: Icon(homeScreenCotroller.selectedIndex == 1
              ? (Icons.search)
              : Icons.search_outlined),
        ),
        BottomNavigationBarItem(
          label: "Panel",
          icon: Icon(
            homeScreenCotroller.selectedIndex == 2
                ? (Icons.work_history)
                : Icons.work_history_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Islam",
          icon: Icon(homeScreenCotroller.selectedIndex == 3
              ? (Icons.local_library)
              : Icons.local_activity_outlined),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(homeScreenCotroller.selectedIndex == 4
              ? (Icons.person)
              : Icons.person_outline),
        ),
      ],
    );
  }
}
