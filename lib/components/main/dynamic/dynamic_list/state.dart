import 'package:get/get.dart';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:talk/api/response_model/dynamic_banner_list_response.dart'
    as dynamic_banner_list_response;
import 'package:talk/api/response_model/dynamic_recommend_post_response.dart'
    as dynamic_recommend_post_response;

class DynamicListState {
  late RxInt currentPage;
  late RxList<dynamic_banner_list_response.Data> dynamicBannerList;
  late RxList<dynamic_recommend_post_response.Items> dynamicList;
  late Rx<EasyRefreshController> easyController;

  DynamicListState() {
    currentPage = 1.obs;
    dynamicBannerList = <dynamic_banner_list_response.Data>[].obs;
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    dynamicList = <dynamic_recommend_post_response.Items>[].obs;
  }
}
