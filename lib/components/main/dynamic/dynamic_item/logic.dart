import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class DynamicItemLogic extends GetxController {
  final DynamicItemState state = DynamicItemState();

  void goDetail() {
    Get.toNamed(AppRoutes.dynamicDetail);
  }
}
