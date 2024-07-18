import 'package:get/get.dart';
import 'package:talk/models/message_model.dart';

import 'state.dart';

class MessagePrivateChatLogic extends GetxController {
  final MessagePrivateChatState state = MessagePrivateChatState();

  void handleSubmitted(String text) {
    Get.log("输入的是: $text");
    state.textController.value.clear();

    state.data.add(MessageModel(message: text, avatar: "https://wx4.sinaimg.cn/mw690/7bb925ebgy1hr1hvtjv2sj20u00u0gpd.jpg", self: true));
  }
}
