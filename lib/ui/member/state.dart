import 'package:get/get.dart';
import 'package:talk/models/user_model.dart';

class MemberState {

  late RxInt tabState;
  late Rx<UserModel> userInfo;

  MemberState() {
    tabState = 0.obs;
    userInfo = const UserModel(
      name: '胖虎',
      age: 22,
      sex: 1,
      dynamic: 1,
      lovenumber: 0,
      footprint: 0,
      fans: 9999,
      bgImage:
          'http://c-ssl.duitang.com/uploads/item/201601/16/20160116191431_LcBVW.thumb.1000_0.jpeg',
      imagelist: [
        'http://wx2.sinaimg.cn/large/006GJQvhly1fzisd44hmjj30g40fxglz.jpg',
        'http://wx1.sinaimg.cn/large/a6d0124fly1fmvjldxon7j204w057js6.jpg'
      ],
      taglist: ['大熊杀手', '灵魂歌手', 'deep dark fantasy ♂'],
      slign: '我胖虎今天就是要搞事情~',
      avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
    ).obs;
  }
}
