import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/models/dynamic_model.dart';
import 'package:talk/models/user_model.dart';

class DynamicSelfieState {
  late Rx<EasyRefreshController> easyController;
  late RxList<DynamicModel> dynamicList;

  DynamicSelfieState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    var dynamicModel = DynamicModel(
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
      content: '我胖虎今天就是要搞事情',
      image: [
        'http://wx1.sinaimg.cn/large/a6d0124fly1fmvjldxon7j204w057js6.jpg',
      ],
      tag: '日常吹逼',
    );
    dynamicList = [
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
      dynamicModel,
    ].obs;
  }
}
