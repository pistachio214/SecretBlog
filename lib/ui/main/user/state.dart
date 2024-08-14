import 'package:get/get.dart';

import 'package:talk/api/response_model/user_mine_response.dart' as user_mine;
import 'package:talk/api/response_model/user_profile_response.dart'
    as user_profile;
import 'package:talk/api/response_model/user_dynamic_response.dart'
    as user_dynamic;

class UserState {
  late RxInt currentIndex;

  late RxList<user_profile.Items> imagesList;
  late RxList<user_dynamic.Items> dynamicList;
  late Rx<user_mine.Data> userInfo;

  UserState() {
    currentIndex = 0.obs;
    imagesList = <user_profile.Items>[].obs;
    dynamicList = <user_dynamic.Items>[].obs;
    userInfo = const user_mine.Data(
      id: 0,
      nickname: "",
      avatar: null,
      dynamicNumber: 0,
      likeNumber: "0",
      fansNumber: 0,
      userExtend: user_mine.UserExtend(
        userId: 2,
        sex: 2,
        signature: "",
        bgImage: null,
        hobby: [],
      ),
    ).obs;
  }
}
