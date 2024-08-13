import 'package:get/get.dart';
import 'package:talk/api/post_api.dart';
import 'package:talk/api/response_model/post_detail_response.dart';
import 'package:talk/lang/http_status.dart';

import 'state.dart';

import 'package:talk/api/response_model/dynamic_recommend_post_response.dart'
    as dynamic_recommend_post;

import 'package:talk/api/response_model/post_detail_response.dart'
    as post_detail;

class DynamicDetailLogic extends GetxController {
  final DynamicDetailState state = DynamicDetailState();

  @override
  void onReady() {
    dynamic_recommend_post.Items data = Get.arguments;

    PostApi.dynamicDetailAction(data.id).then((PostDetailResponse response) {
      if (response.code == HttpStatus.success) {
        post_detail.Data? db = response.data;
        if (db != null) {
          state.detail.value = db;

          if (db.files.isNotEmpty) {
            List<String> tempImages = db.files.map((file) => file.url).toList();
            state.images.value = tempImages;
          }
        }
      }
    });

    super.onReady();
  }
}
