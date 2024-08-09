import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/tag_item_component.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class UserLogic extends GetxController with GetSingleTickerProviderStateMixin {
  final UserState state = UserState();

  late TabController tabController = TabController(
    initialIndex: 0,
    vsync: this,
    length: 2,
  );

  void onPageChange(int index) {
    state.currentIndex.value = index;
  }

  void onToEditAction() {
    Get.toNamed(AppRoutes.userEdit);
  }

  void onToSettingAction() {
    Get.toNamed(AppRoutes.setting);
  }

  @override
  void onClose() {
    tabController.dispose();

    super.onClose();
  }
}
