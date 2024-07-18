import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MessageIconItemComponent extends StatelessWidget {
  MessageIconItemComponent({
    super.key,
    required this.iconUrl,
    required this.title,
  });

  final String iconUrl;
  final String title;

  final logic = Get.put(MessageIconItemLogic());
  final state = Get.find<MessageIconItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Image.asset(iconUrl),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff666666),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
