import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:talk/models/message_model.dart';

import 'state.dart';

class MessagePrivateChatLogic extends GetxController {
  final MessagePrivateChatState state = MessagePrivateChatState();

  @override
  void onReady() {
    // 滚动到最底部
    state.scrollController.value.animateTo(
      state.scrollController.value.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );

    state.focusNode.value.addListener(() {
      if (state.focusNode.value.hasFocus) {
        // TextField 获取到焦点后执行的操作
        print('TextField has focus');
        // 滚动到最底部
        state.scrollController.value.animateTo(
            state.scrollController.value.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut
        );
        // 你可以在这里更新状态、发送请求等
      }
    });

    super.onReady();
  }

  void handleSubmitted(String text) {
    Get.log("输入的是: $text");
    // state.textController.value.clear();

    state.textController.value.clear();
    state.data.add(
      MessageModel(
        message: text,
        avatar:
            "https://wx4.sinaimg.cn/mw690/7bb925ebgy1hr1hvtjv2sj20u00u0gpd.jpg",
        self: true,
      ),
    );

    // 检查是否需要滚动到底部
    Future.delayed(Duration.zero, () {
      if (state.scrollController.value.hasClients && state.scrollController.value.offset >= state.scrollController.value.position.maxScrollExtent) {
        // 如果已经滚动到底部，则不需要再次滚动
        return;
      }

      // 滚动到最底部
      state.scrollController.value.animateTo(
          state.scrollController.value.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut
      );
    });
  }

}
