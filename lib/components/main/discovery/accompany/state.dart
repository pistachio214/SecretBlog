import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/models/accommpany_model.dart';

class AccompanyState {
  late RxList<AccompanyModel> accompanyList;
  late Rx<EasyRefreshController> easyController;

  AccompanyState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    accompanyList = [
      AccompanyModel(
        avatar:
            'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '天空黑得像哭过，你离开以后',
        title: '压马路',
        image:
            'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '并没有更自由',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '酸酸的空气',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '111111111111111111',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '天空黑得像哭过，你离开以后',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '天空黑得像哭过，你离开以后',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '天空黑得像哭过，你离开以后',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
      AccompanyModel(
        avatar:
        'https://img2.woyaogexing.com/2020/02/21/fd4b9708ac6f4d4db85821a2070301db!400x400.jpeg',
        name: '木木哒',
        time: '我拉个晓得撒~',
        area: '1km',
        acctime: '天空黑得像哭过，你离开以后',
        title: '压马路',
        image:
        'https://img2.woyaogexing.com/2020/02/21/d2775a2125314ffab36552a6111ab3a9!400x400.jpeg',
      ),
    ].obs;
  }
}
