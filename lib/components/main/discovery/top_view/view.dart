import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/discovery/top_view_item/view.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class TopViewComponent extends StatelessWidget {
  TopViewComponent({super.key});

  final logic = Get.put(TopViewLogic());
  final state = Get.find<TopViewLogic>().state;

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
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.separated(
                itemCount: state.topViewList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return TopViewItemComponent(
                    data: state.topViewList[index],
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
