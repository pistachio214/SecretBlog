import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/main_bottom_navigation_bar_component.dart';

import 'logic.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final logic = Get.put(MainLogic());
  final state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Obx(
          () => MainBottomNavigationBarComponent(
            currentIndex: state.currentIndex.value,
            bottomTabs: state.bottomTabs,
            onTap: (int index) => logic.onTap(index),
          ),
        ),
        body: Obx(
          () => state.tabBodies[state.currentIndex.value],
        ),
      ),
    );
  }
}
