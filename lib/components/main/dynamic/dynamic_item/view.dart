import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/main/discovery/topic_item/view.dart';
import 'package:talk/components/main/dynamic/dynamic_item_image/view.dart';
import 'package:talk/routers/app_routes.dart';

import 'logic.dart';

import 'package:talk/models/dynamic_model.dart';
import 'package:talk/utils/icon_font_util.dart';

class DynamicItemComponent extends StatelessWidget {
  DynamicItemComponent({
    super.key,
    required this.data,
    required this.index,
    required this.onTapImage,
    required this.onTapItem,
  });

  final DynamicModel data;
  final int index;
  final Function onTapImage;
  final Function onTapItem;

  final logic = Get.put(DynamicItemLogic());
  final state = Get.find<DynamicItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderCover(context),
          Gaps.vGap15,
          DynamicItemImageComponent(
            image: data.image,
            onTap: () => onTapImage(),
          ),
          Gaps.vGap15,
          GestureDetector(
            onTap: () {
              Get.log("是不是这里");
              // NavigatorUtils.push(
              //     context, DynamicsRouter.dynamicDetailPage);
            },
            child: Text(
              data.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                letterSpacing: 1,
                fontSize: 14,
              ),
            ),
          ),
          Gaps.vGap15,
          _renderDynamicTagAndComment(context),
        ],
      ),
    );
  }

  // 用户头像信息
  Widget _renderCover(context) {
    return GestureDetector(
      onTap: () {
        // NavigatorUtils.push(context, UsersRouter.userPage);
        Get.toNamed(AppRoutes.member);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AvatarComponent(
                url: data.userInfo.avatar!,
                width: 40,
                height: 40,
              ),
              Gaps.hGap8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.userInfo.name ?? "",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                  ),
                  Text(
                    data.userInfo.slign ?? "",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 28,
            width: 58,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFff7faa),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: const Text(
              '关注',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 动态
  Widget _renderDynamicTagAndComment(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TopicItemComponent(
              topic: '搞事情~',
              onTap: () {
                // NavigatorUtils.push(context, DiscoveryRouter.topicDetailPage);
              },
            )
          ],
        ),
        Gaps.vGap15,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              IconFont.icon_fabu,
              size: 20,
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconFont.icon_guanzhu,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      '32',
                      style: TextStyle(
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
                    Icon(
                      IconFont.icon_liaotian,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      '38',
                      style: TextStyle(
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
