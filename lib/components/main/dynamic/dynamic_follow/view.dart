import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/dynamic/dynamic_item/view.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class DynamicFollowComponent extends StatelessWidget {
  DynamicFollowComponent({super.key});

  final logic = Get.put(DynamicFollowLogic());
  final state = Get.find<DynamicFollowLogic>().state;

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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.separated(
                itemCount: state.dynamicList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return DynamicItemComponent(
                    data: state.dynamicList[index],
                    index: index,
                    onTapImage: () {},
                    onTapItem: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
