import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/main/discovery/topic_item/view.dart';
import 'package:talk/components/main/dynamic/dynamic_item_image/view.dart';
import 'package:talk/utils/toast_util.dart';

import 'logic.dart';

import 'package:talk/utils/icon_font_util.dart';

import 'package:talk/api/response_model/dynamic_recommend_post_response.dart'
    as dynamic_recommend_post_response;

class DynamicItemComponent extends StatelessWidget {
  DynamicItemComponent({
    super.key,
    required this.data,
    required this.index,
    required this.onTapImage,
    required this.onTapItem,
  });

  final dynamic_recommend_post_response.Items data;
  final int index;
  final Function onTapImage;
  final Function onTapItem;

  final logic = Get.put(DynamicItemLogic());
  final state = Get.find<DynamicItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    String? generateContentString = generateContent();

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderCover(),
          Gaps.vGap15,
          Visibility(
            visible: data.files.isNotEmpty,
            child: DynamicItemImageComponent(
              image: data.files.map((file) => file.url).toList(),
              onTap: () => onTapImage(),
            ),
          ),
          Gaps.vGap15,
          GestureDetector(
            onTap: () => onTapItem(),
            child: Visibility(
              visible: generateContentString != null,
              child: Text(
                "$generateContentString",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  letterSpacing: 1,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Gaps.vGap15,
          _renderDynamicTagAndComment(),
        ],
      ),
    );
  }

  String? generateContent() {
    if (data.title.isNotEmpty) {
      return data.title;
    }

    if (data.content.isNotEmpty) {
      return data.content;
    }

    return null;
  }

  // 用户头像信息
  Widget _renderCover() {
    return GestureDetector(
      onTap: () => logic.goMemberPage(data.userId),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AvatarComponent(
                url: data.users!.avatar,
                width: 40,
                height: 40,
              ),
              Gaps.hGap8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${data.users?.nickname}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                  ),
                  Text(
                    "${data.users?.userExtend?.signature}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Container(
          //   height: 28,
          //   width: 58,
          //   alignment: Alignment.center,
          //   decoration: const BoxDecoration(
          //     color: Color(0xFFff7faa),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(18),
          //     ),
          //   ),
          //   child: const Text(
          //     '关注',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 13,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  // 动态
  Widget _renderDynamicTagAndComment() {
    List<dynamic_recommend_post_response.Tags>? tags = data.tags;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: tags.isNotEmpty,
          child: Row(
            children: List.generate(tags.length, (index) {
              return TopicItemComponent(
                topic: tags[index].name,
                onTap: () {
                  ToastUtil.shotToast("后续点击进入话题的列表");
                },
              );
            }),
          ),
        ),
        Gaps.vGap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              IconFont.icon_fabu,
              size: 20,
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      IconFont.icon_guanzhu,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      "${data.likeNum}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
                Gaps.hGap12,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      IconFont.icon_liaotian,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      "${data.reviewNum}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap8,
      ],
    );
  }
}
