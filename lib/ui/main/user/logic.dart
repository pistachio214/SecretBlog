import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/api/response_model/user_dynamic_response.dart'
    as user_dynamic;
import 'package:talk/api/response_model/user_mine_response.dart';
import 'package:talk/api/response_model/user_profile_response.dart'
    as user_profile;
import 'package:talk/api/user_api.dart';
import 'package:talk/lang/http_status.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class UserLogic extends GetxController with GetSingleTickerProviderStateMixin {
  final UserState state = UserState();

  late TabController tabController = TabController(
    initialIndex: 0,
    vsync: this,
    length: 2,
  );

  @override
  void onReady() {
    initializeUserMine();
    initializeUserProfile();
    initializeUserDynamic();

    super.onReady();
  }

  void initializeUserMine() {
    UserApi.minieAction().then((UserMineResponse response) {
      if (response.code == HttpStatus.success) {
        if (response.data != null) {
          state.userInfo.value = response.data!;
        }
      }
    });
  }

  void initializeUserProfile() {
    UserApi.profileAction().then((user_profile.UserProfileResponse response) {
      if (response.code == HttpStatus.success) {
        var data = response.data;
        if (data != null && data.items.isNotEmpty) {
          List<user_profile.Items> items = data.items;

          if (items.length > 10) {
            state.imagesList.value =
                items.sublist(items.length - 10, items.length);
          } else {
            state.imagesList.value = items;
          }
        }
      }
    });
  }

  void initializeUserDynamic() {
    UserApi.dynamicAction().then((user_dynamic.UserDynamicResponse response) {
      if (response.code == HttpStatus.success) {
        var data = response.data;
        if (data != null && data.items.isNotEmpty) {
          List<user_dynamic.Items> items = data.items;

          state.dynamicList.value = items;
        }
      }
    });
  }

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
