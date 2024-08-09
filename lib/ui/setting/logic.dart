import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class SettingLogic extends GetxController {
  final SettingState state = SettingState();

  void quitSystemAction(BuildContext context) {
    //缓存实例化
    final GetStorage storageBox = GetStorage();
    storageBox.remove("tokenValue").then((_) {
      Navigator.of(context).pop();

      Get.offAllNamed(AppRoutes.login);
    });
  }
}
