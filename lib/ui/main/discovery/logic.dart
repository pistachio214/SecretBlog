import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'state.dart';

class DiscoveryLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  final DiscoveryState state = DiscoveryState();

  late TabController tabController = TabController(
    initialIndex: 0,
    vsync: this,
    length: state.pageList.length,
  );

  late final PageController pageController = PageController(initialPage: 0);

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
