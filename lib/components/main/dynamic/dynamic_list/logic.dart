import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/api/banner_api.dart';
import 'package:talk/api/post_api.dart';
import 'package:talk/api/response_model/dynamic_banner_list_response.dart';
import 'package:talk/api/response_model/DynamicRecommendPostResponse.dart';
import 'package:talk/lang/http_status.dart';
import 'package:talk/models/dynamic_model.dart';
import 'package:talk/models/user_model.dart';

import 'state.dart';

class DynamicListLogic extends GetxController {
  final DynamicListState state = DynamicListState();

  DynamicModel testData = DynamicModel(
    userInfo: const UserModel(
      name: '胖虎',
      age: 22,
      sex: 1,
      dynamic: 1,
      lovenumber: 0,
      footprint: 0,
      fans: 9999,
      imagelist: [
        'http://wx2.sinaimg.cn/large/006GJQvhly1fzisd44hmjj30g40fxglz.jpg',
        'http://wx1.sinaimg.cn/large/a6d0124fly1fmvjldxon7j204w057js6.jpg'
      ],
      taglist: [
        '大熊杀手',
      ],
      slign: '我胖虎今天就是要搞事情~',
      avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
    ),
    content:
        '我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情,我胖虎今天就是要搞事情.',
    image: [
      'http://wx1.sinaimg.cn/large/a6d0124fly1fmvjldxon7j204w057js6.jpg',
    ],
    tag: '日常吹逼',
  );

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
      state.dynamicList.value = response.data!.items!;
    });
  }

  @override
  void onReady() {
    // state.dynamicList.add(testData);
    // state.dynamicList.add(testData);
    // state.dynamicList.add(testData);
    super.onReady();
  }
}
