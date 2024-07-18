import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/message_chat_item/view.dart';
import 'package:talk/components/message_icon_item/view.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class MessageComponent extends StatelessWidget {
  MessageComponent({super.key});

  final logic = Get.put(MessageLogic());
  final state = Get.find<MessageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "信息中心",
          style: TextStyle(fontSize: 18),
        ),
        leading: null,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoShadowScrollBehaviorHandle(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 95,
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 30,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MessageIconItemComponent(
                        iconUrl: "assets/images/message/message.png",
                        title: "消息通知",
                      ),
                      MessageIconItemComponent(
                        iconUrl: "assets/images/message/@me.png",
                        title: "@我",
                      ),
                      MessageIconItemComponent(
                        iconUrl: "assets/images/message/loveme.png",
                        title: "收到的赞",
                      ),
                      MessageIconItemComponent(
                        iconUrl: "assets/images/message/system_message.png",
                        title: "系统通知",
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  color: const Color(0xFFF4F4F4),
                ),

                // 聊天对话框列表
                ListView.builder(
                  itemCount: state.userList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return MessageChatItemComponent(
                      data: state.userList[index],
                      onTap: () => logic.goPrivateChat(state.userList[index].name),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
