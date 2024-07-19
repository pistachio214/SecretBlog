import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:talk/models/message_model.dart';

class MessagePrivateChatState {
  late Rx<FocusNode> focusNode;
  late Rx<ScrollController> scrollController;
  late Rx<TextEditingController> textController;
  late RxList<MessageModel> data;

  MessagePrivateChatState() {
    focusNode = FocusNode().obs;
    scrollController = ScrollController().obs;
    textController = TextEditingController().obs;
    data = [
      const MessageModel(
        message: '你好呀~',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/6b47fc86451b4f00af229e0136bca59e!400x400.jpeg',
        self: false,
      ),
      const MessageModel(
        message: '你好~',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/98a96d81d9e9492c84ce3b3e74548a10!400x400.jpeg',
        self: true,
      ),
      const MessageModel(
        message: '怎么称呼？',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/6b47fc86451b4f00af229e0136bca59e!400x400.jpeg',
        self: false,
      ),
      const MessageModel(
        message: 'Martin',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/98a96d81d9e9492c84ce3b3e74548a10!400x400.jpeg',
        self: true,
      ),
      const MessageModel(
        message: '人间迷惑行为',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/6b47fc86451b4f00af229e0136bca59e!400x400.jpeg',
        self: false,
      ),
      const MessageModel(
        message: '重启大法~',
        avatar:
            'https://img2.woyaogexing.com/2020/02/24/6b47fc86451b4f00af229e0136bca59e!400x400.jpeg',
        self: true,
      ),
    ].obs;
  }
}
