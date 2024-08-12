import 'package:get/get.dart';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:talk/api/response_model/dynamic_banner_list_response.dart';
import 'package:talk/models/dynamic_model.dart';

class DynamicListState {
  late RxList<Data> dynamicBannerList;
  late RxList<DynamicModel> dynamicList;
  late Rx<EasyRefreshController> easyController;

  DynamicListState() {
    dynamicBannerList = <Data>[].obs;
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    dynamicList = <DynamicModel>[].obs;
  }
}
