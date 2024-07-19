import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:talk/models/avatar_list.dart';
import 'package:talk/models/dynamic_model.dart';
import 'package:talk/models/near_model.dart';
import 'package:talk/models/user_model.dart';

class NearbyState {
  late RxList<DynamicModel> dynamicList;
  late Rx<NearModel> near;
  late Rx<EasyRefreshController> easyController;

  NearbyState() {
    easyController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    ).obs;

    near = const NearModel(
      avatar:
          'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
      name: '不晓得',
      desc: '这个妹子很漂亮哟~',
      distance: 1,
      sex: 0,
    ).obs;

    dynamicList = [
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
              'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
      DynamicModel(
        userInfo: const UserModel(
          name: '木木哒',
          slign: '我拉个晓得撒~',
          avatar:
          'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
        ),
        content: '╬═☆丕傠ぬ丕迎匼，丕夠傠囍狚炔洎怞ルo',
        image: [
          'http://5b0988e595225.cdn.sohucs.com/images/20190816/19bf6a37d2b547679d78e23c62581021.jpeg',
        ],
        tag: '新人得那些事',
        avatars: [
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/c9a000fd3b304438bc6380f7756ffbdc!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/07/1383eb96c5d14c03befa008cff870752!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/04199d221cfb445bbb400999dbc3e248!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/3d352b92e7df409bb2dd172d0b73ad4f!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/9d7498cadd2c4823a44df61a509dedad!400x400.jpeg',
          ),
          AvatarList(
            'https://img2.woyaogexing.com/2020/02/14/28976d190bb84d4dae4d5e3f9297052f!400x400.jpeg',
          )
        ],
      ),
    ].obs;
  }
}
