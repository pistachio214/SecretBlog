import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/message_private_chat_item/view.dart';

import 'logic.dart';

class MessagePrivateChatPage extends StatelessWidget {
  MessagePrivateChatPage({super.key});

  final logic = Get.put(MessagePrivateChatLogic());
  final state = Get.find<MessagePrivateChatLogic>().state;

  @override
  Widget build(BuildContext context) {
    String title = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: const Color(0xfff5f5f5),
      body: SizedBox(
        height: Get.height,
        // padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Obx(
              () => Flexible(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: state.data.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 15),
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return MessagePrivateChatItemComponent(
                        data: state.data[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            const Divider(height: 1.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.mic,
                    color: Colors.lightBlue,
                    size: 24,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: state.textController.value,
                      onSubmitted: (String text) => logic.handleSubmitted(text),
                      decoration: const InputDecoration.collapsed(
                        hintText: '发送消息',
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.send,
                    color: Color(0xFFff7faa),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
