import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';
import 'package:talk/models/dynamic_model.dart';
import 'package:talk/utils/icon_font_util.dart';

import 'logic.dart';

class DynamicSelfieComponent extends StatelessWidget {
  DynamicSelfieComponent({super.key});

  final logic = Get.put(DynamicSelfieLogic());
  final state = Get.find<DynamicSelfieLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: NoShadowScrollBehaviorHandle(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: TalkAppListComponent(
            controller: state.easyController.value,
            onRefresh: () => logic.refreshData(),
            onLoadMore: () => logic.addMoreData(),
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                children: List.generate(state.dynamicList.length, (index) {
                  return _buildGestureDetector(state.dynamicList[index]);
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buildGestureDetector(DynamicModel data) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: LoadImage(image: data.userInfo.avatar!),
                  ),
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "春蚕死去了，但留下了华贵丝绸；蝴蝶死去了，但留下了漂亮的衣裳；画眉飞去了，但留下了美妙的歌声；花朵凋谢了，但留下了缕缕幽香；蜡烛燃尽了，但留下一片光明；雷雨过去了，但留下了七彩霓虹",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 14,
                    ),
                  ),
                  Gaps.vGap10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AvatarComponent(
                            url:
                                'https://img2.woyaogexing.com/2020/02/07/a0b239f0e803449686bd0f8358c9b3dc!400x400.jpeg',
                            width: 20,
                            height: 20,
                          ),
                          Gaps.hGap10,
                          Text(
                            'no name',
                            style: TextStyle(
                                color: Color(0xFF999999), fontSize: 14),
                          ),
                        ],
                      ),
                      Icon(
                        IconFont.icon_guanzhu,
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
