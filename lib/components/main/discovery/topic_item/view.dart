import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TopicItemComponent extends StatelessWidget {
  TopicItemComponent({
    super.key,
    required this.topic,
    required this.onTap,
  });

  final String topic;
  final Function onTap;

  final logic = Get.put(TopicItemLogic());
  final state = Get.find<TopicItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          padding: const EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
          decoration: BoxDecoration(
            color: const Color(0xfff9f9f9),
            borderRadius: BorderRadius.circular(30.0),
          ),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Color(0xFFff7faa),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '#',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 4),
                child: Text(
                  topic,
                  style: const TextStyle(
                    color: Color(0xFFff7faa),
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
