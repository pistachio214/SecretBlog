import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/models/list_topic_model.dart';

import 'logic.dart';

class TopicListItemComponent extends StatelessWidget {
  TopicListItemComponent({
    super.key,
    required this.data,
    required this.onTap,
  });

  final ListTopicModel data;
  final Function onTap;

  final logic = Get.put(TopicListItemLogic());
  final state = Get.find<TopicListItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '# ${data.tag}',
                          style: const TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          data.content,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            color: Color(0xff999999),
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AvatarComponent(
                                  url: data.avatar,
                                  width: 24,
                                  height: 24,
                                ),
                                Gaps.hGap8,
                                Text(
                                  data.name,
                                  style: const TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '阅读: ${data.number}',
                              style: const TextStyle(
                                color: Color(0xff999999),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: LoadImage(image: data.image),
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap15,
        ],
      ),
    );
  }
}
