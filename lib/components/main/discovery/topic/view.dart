import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/cell_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/main/discovery/hot_topic/view.dart';
import 'package:talk/components/main/discovery/topic_item/view.dart';
import 'package:talk/components/main/discovery/topic_list_item/view.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class TopicComponent extends StatelessWidget {
  TopicComponent({super.key});

  final logic = Get.put(TopicLogic());
  final state = Get.find<TopicLogic>().state;

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
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  HotTopicComponent(),
                  Gaps.vGap15,
                  CellComponent(
                    title: '热门话题',
                    desc: '发现你喜欢的话题',
                    onTap: () {},
                  ),
                  Gaps.vGap10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TopicItemComponent(
                        topic: '你的小心想',
                        onTap: () => logic.goTopicDetail(),
                      ),
                      Gaps.hGap10,
                      TopicItemComponent(
                        topic: '你的小心想',
                        onTap: () {},
                      ),
                    ],
                  ),
                  Gaps.vGap15,
                  Container(
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: state.newsList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return TopicListItemComponent(
                            data: state.newsList[index],
                            onTap: () => logic.goTopicDetail(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
