import 'package:get/get.dart';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:talk/models/dynamic_model.dart';

class DynamicListState {
  late RxList<DynamicModel> dynamicList;
  late Rx<EasyRefreshController> easyController;

  DynamicListState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    dynamicList = <DynamicModel>[].obs;
  }
}
