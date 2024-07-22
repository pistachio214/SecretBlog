import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class TopicLogic extends GetxController {
  final TopicState state = TopicState();

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

  void goTopicDetail() {
    Get.toNamed(AppRoutes.topicDetail);
  }
}
