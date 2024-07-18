import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/models/list_user.dart';

import 'logic.dart';

class MessageChatItemComponent extends StatelessWidget {
  MessageChatItemComponent({
    super.key,
    required this.data,
    required this.onTap,
  });

  final ListUser data;
  final GestureTapCallback onTap;

  final logic = Get.put(MessageChatItemLogic());
  final state = Get.find<MessageChatItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () => onTap(),
      child: Container(
        height: 62,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
              color: Color(0xFFF4F4F4),
            ),
          ),
        ),
        child: Row(
          children: [
            AvatarComponent(url: data.avatar, width: 40, height: 40),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.name,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFff7faa),
                        ),
                      ),
                      SizedBox(
                        width: 260,
                        child: Text(
                          data.content,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF666666),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.time,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF999999),
                        ),
                      ),
                      Container(
                        width: 16,
                        height: 16,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFff7faa),
                        ),
                        child: Text(
                          "${data.count}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
