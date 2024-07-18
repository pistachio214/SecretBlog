import 'package:get/get.dart';
import 'package:talk/models/list_user.dart';

class MessageState {
  late RxList<ListUser> userList;

  MessageState() {
    userList = [
      const ListUser(
        avatar:
            'https://img2.woyaogexing.com/2020/02/07/bc5c623d1e0648c1b300f702fd944c86!400x400.jpeg',
        name: '木木哒',
        count: 9,
        time: '20s',
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo~~~~',
      ),
      const ListUser(
        avatar:
            'https://wx3.sinaimg.cn/mw690/7bb925ebgy1hr1hvvhkv2j23y83w8qv5.jpg',
        name: '奥里给',
        count: 2,
        time: '25s',
        content: '奥里给干了兄弟们~',
      ),
      const ListUser(
        avatar:
            'https://wx3.sinaimg.cn/mw690/7bb925ebgy1hr1hvx74ksj20sk0sk43v.jpg',
        name: 'Dio',
        count: 1,
        time: '21:18',
        content: 'wryyyyyyyyyyyyyyyyy~',
      ),
      const ListUser(
        avatar:
            'https://wx4.sinaimg.cn/mw690/7bb925ebgy1hr1hvtjv2sj20u00u0gpd.jpg',
        name: '癌坤~',
        count: 4,
        time: '21:18',
        content: '唱跳rap music~鸡你太美~',
      ),
      const ListUser(
        avatar:
            'https://img2.woyaogexing.com/2020/02/14/79c9df02200f49caabaad1f4e8caedcb!400x400.jpeg',
        name: '木头',
        count: 4,
        time: '21:18',
        content: '~~~~',
      ),
    ].obs;
  }
}
