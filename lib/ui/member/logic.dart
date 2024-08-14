import 'package:get/get.dart';
import 'package:talk/api/response_model/user_dynamic_response.dart'
    as user_dynamic;
import 'package:talk/api/response_model/user_mine_response.dart';
import 'package:talk/api/response_model/user_profile_response.dart'
    as user_profile;
import 'package:talk/api/user_api.dart';
import 'package:talk/lang/http_status.dart';

import 'state.dart';

class MemberLogic extends GetxController {
  final MemberState state = MemberState();

  @override
  void onReady() {
    int userId = Get.arguments;

    UserApi.minieByUserIdAction(userId).then((UserMineResponse response) {
      if (response.code == HttpStatus.success) {
        state.userInfo.value = response.data!;
      }
    });

    UserApi.profileByUserIdAction(userId)
        .then((user_profile.UserProfileResponse response) {
      if (response.code == HttpStatus.success) {
        var data = response.data;
        if (data != null && data.items.isNotEmpty) {
          List<user_profile.Items> items = data.items;

          if (items.length > 10) {
            state.imagesList.value =
                items.sublist(items.length - 10, items.length);
          } else {
            state.imagesList.value = items;
          }
        }
      }
    });

    UserApi.dynamicByUserIdAction(userId)
        .then((user_dynamic.UserDynamicResponse response) {
      if (response.code == HttpStatus.success) {
        var data = response.data;
        if (data != null && data.items.isNotEmpty) {
          List<user_dynamic.Items> items = data.items;

          state.dynamicList.value = items;
        }
      }
    });

    super.onReady();
  }
}
