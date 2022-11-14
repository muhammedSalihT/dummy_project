import 'package:dummy_project/app/modules/home_page/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (homeScreenController) {
      return SizedBox(
        height: double.infinity,
        child: Center(
          child: Text(
            homeScreenController.getScreen(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
