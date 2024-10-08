import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class DynamicLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  final DynamicState state = DynamicState();

  late TabController tabController = TabController(
    initialIndex: 1,
    vsync: this,
    length: state.pageList.length,
  );

  late final PageController pageController = PageController(initialPage: 1);

  @override
  void onInit() {
    super.onInit();
  }

  void jumpToPage(int index) {
    pageController.jumpToPage(index);
    // Get.log("$index");
  }

  void onPageChanged(int index) {
    tabController.animateTo(index);
  }

  @override
  void onClose() {
    tabController.dispose();

    super.onClose();
  }
}
