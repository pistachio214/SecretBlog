import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/api/banner_api.dart';
import 'package:talk/api/post_api.dart';
import 'package:talk/api/response_model/dynamic_banner_list_response.dart';
import 'package:talk/api/response_model/dynamic_recommend_post_response.dart';
import 'package:talk/lang/http_status.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

import 'package:talk/api/response_model/dynamic_recommend_post_response.dart'
    as dynamic_recommend_post;

class DynamicListLogic extends GetxController {
  final DynamicListState state = DynamicListState();

  /// 下拉刷新数据
  Future<Null> refreshData() async {
    Future.delayed(const Duration(seconds: 2), () {
      // if (mounted) {
      //   _getPostData(false);
      state.easyController.value.finishRefresh();
      // }
    });
  }

  /// 上拉加载数据
  Future<Null> addMoreData() async {
    Future.delayed(const Duration(seconds: 2), () {
      state.easyController.value.finishLoad(IndicatorResult.success);
    });
  }

  void onInitBanner() {
    BannerApi.dynamicBannerListAction()
        .then((DynamicBannerListResponse response) {
      if (response.code == HttpStatus.success) {
        state.dynamicBannerList.value = response.data;
      }
    });
  }

  void onInitDynamic() {
    PostApi.dynamicBannerListAction()
        .then((DynamicRecommendPostResponse response) {
      state.dynamicList.value = response.data!.items;
    });
  }

  void goDetail(dynamic_recommend_post.Items data) {
    Get.toNamed(AppRoutes.dynamicDetail, arguments: data);
  }

// @override
// void onReady() {
//   super.onReady();
// }
}
