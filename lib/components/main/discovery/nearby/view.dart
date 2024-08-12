import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/cell_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/main/discovery/near_item/view.dart';
import 'package:talk/components/main/dynamic/dynamic_item/view.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';
import 'package:talk/utils/icon_font_util.dart';

import 'logic.dart';

class NearbyComponent extends StatelessWidget {
  NearbyComponent({super.key});

  final logic = Get.put(NearbyLogic());
  final state = Get.find<NearbyLogic>().state;

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 8,
                      ),
                      margin: const EdgeInsets.only(
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xfff5f5f5),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            IconFont.icon_dingwei,
                            size: 20,
                            color: Color(0xFFff7faa),
                          ),
                          Gaps.hGap4,
                          Text(
                            '闵行区沪闵路6088号莘庄龙之梦',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF333333)),
                          )
                        ],
                      ),
                    ),
                    Gaps.vGap15,
                    CellComponent(
                      title: '为你推荐附近人',
                      desc: '有缘数里来相会',
                      onTap: () {
                        // NavigatorUtils.push(
                        //     context, DiscoveryRouter.nearListPage);
                      },
                    ),
                    Gaps.vGap15,
                    Row(
                      children: [
                        NearItemComponent(data: state.near.value),
                        Gaps.hGap15,
                        NearItemComponent(data: state.near.value),
                      ],
                    ),
                    Gaps.vGap15,
                    CellComponent(
                      title: '为你推荐的动态',
                      desc: '小哥哥们快来玩呀',
                      onTap: () {},
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      child: ListView.separated(
                        itemCount: state.dynamicList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          // return DynamicItemComponent(
                          //   index: index,
                          //   data: state.dynamicList[index],
                          //   onTapImage: () {},
                          //   onTapItem: () {},
                          // );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
