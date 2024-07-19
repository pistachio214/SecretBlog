import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/models/top_view_model.dart';

class TopViewState {
  late RxList<TopViewModel> topViewList;
  late Rx<EasyRefreshController> easyController;

  TopViewState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    topViewList = [
      const TopViewModel(
        avatar:
            'https://img2.woyaogexing.com/2020/02/07/bc5c623d1e0648c1b300f702fd944c86!400x400.jpeg',
        name: '木木哒',
        title: '有哪些牛逼逼红红但是却不为人知的事情~~',
        time: 2,
        count: 999,
        cover:
            'https://img2.woyaogexing.com/2020/02/07/bc5c623d1e0648c1b300f702fd944c86!400x400.jpeg',
      ),
      const TopViewModel(
        avatar:
            'https://img2.woyaogexing.com/2020/02/07/bc5c623d1e0648c1b300f702fd944c86!400x400.jpeg',
        name: '木木哒',
        title: '有哪些牛逼逼红红但是却不为人知的事情~~',
        time: 2,
        count: 666,
        cover: '',
      ),
    ].obs;
  }
}
