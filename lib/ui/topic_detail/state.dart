import 'package:get/get.dart';
import 'package:talk/models/dynamic_model.dart';
import 'package:talk/models/user_model.dart';

class TopicDetailState {
  late RxList<DynamicModel> dynamicList;

  TopicDetailState() {
    dynamicList = [
      DynamicModel(
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
        content: '都说了我胖虎不简单了~',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '静香',
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
          slign: '我静香今天就是要搞事情~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '都说了我静香不简单了~',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '大熊',
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
            '静香杀手',
          ],
          slign: '我大熊今天就是要搞事情~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '都说了我大熊不简单了~',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
      ),
    ].obs;
  }
}
