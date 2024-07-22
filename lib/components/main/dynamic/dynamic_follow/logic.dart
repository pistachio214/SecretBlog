import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

import 'state.dart';

class DynamicFollowLogic extends GetxController {
  final DynamicFollowState state = DynamicFollowState();

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

  @override
  void onClose() {
    state.easyController.value.dispose();

    super.onClose();
  }
}
