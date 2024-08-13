import 'package:get/get.dart';

import 'package:talk/api/response_model/post_detail_response.dart'
    as post_detail;

class DynamicDetailState {
  late Rx<post_detail.Data> detail;

  late RxList<String> images;

  DynamicDetailState() {
    detail = const post_detail.Data(
      id: 0,
      userId: 0,
      type: 2,
      postType: 0,
      content: "",
      hotNum: 0,
      status: 1,
      likeNum: 0,
      reviewNum: 0,
      createdAt: "",
      isLike: false,
      users: post_detail.Users(
        id: 0,
        nickname: "",
        avatar: "",
        userExtend: post_detail.UserExtend(
          userId: 0,
          sex: 2,
          signature: "",
        ),
      ),
      files: [],
    ).obs;

    images = <String>[].obs;
  }
}
