import 'package:get/get.dart';

import 'package:talk/api/response_model/user_mine_response.dart' as user_mine;
import 'package:talk/api/response_model/user_profile_response.dart'
    as user_profile;
import 'package:talk/api/response_model/user_dynamic_response.dart'
    as user_dynamic;

class MemberState {
  late RxInt tabState;
  late RxList<user_profile.Items> imagesList;
  late RxList<user_dynamic.Items> dynamicList;
  late Rx<user_mine.Data> userInfo;

  MemberState() {
    tabState = 0.obs;
    imagesList = <user_profile.Items>[].obs;
    dynamicList = <user_dynamic.Items>[].obs;

    var defaultUserInfo = const user_mine.Data(
        id: 0,
        nickname: "",
        avatar: "",
        dynamicNumber: 0,
        likeNumber: "0",
        fansNumber: 0,
        userExtend: user_mine.UserExtend(
          userId: 0,
          sex: 2,
          signature: "",
          bgImage: "",
          hobby: [],
        ));

    userInfo = defaultUserInfo.obs;
  }
}
