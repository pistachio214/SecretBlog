import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/models/message_model.dart';

import 'logic.dart';

class MessagePrivateChatItemComponent extends StatelessWidget {
  MessagePrivateChatItemComponent({super.key, required this.data});

  final MessageModel data;

  final logic = Get.put(MessagePrivateChatItemLogic());
  final state = Get.find<MessagePrivateChatItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(bottom: 15),
      child: data.self == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(4),
                    ),
                    color: Color(0xFFff7faa),
                  ),
                  child: Text(
                    data.message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Gaps.hGap8,
                AvatarComponent(
                  url: data.avatar,
                  width: 40,
                  height: 40,
                )
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AvatarComponent(
                  url: data.avatar,
                  width: 40,
                  height: 40,
                ),
                Gaps.hGap8,
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(4),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    data.message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
