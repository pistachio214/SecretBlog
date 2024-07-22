import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/main/dynamic/dynamic_item/view.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class TopicDetailPage extends StatelessWidget {
  TopicDetailPage({super.key});

  final logic = Get.put(TopicDetailLogic());
  final state = Get.find<TopicDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "新人的那些事情",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoShadowScrollBehaviorHandle(),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.infinity - 30,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const LoadImage(
                              image:
                                  'https://fzn.cc/wp-content/uploads/2018/01/274755aeb65a36513fe7dd5c80715c53.gif',
                              fit: BoxFit.cover,
                            ),
                          )),
                      Gaps.vGap10,
                      const Text(
                        '在这里你可以畅谈双子座的一些琐事~',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                        ),
                      ),
                      Gaps.vGap4,
                      const Text(
                        '来话题#新人的那些事情#发布动态，说出你的囧事~',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Gaps.vGap15,
                  ListView.builder(
                    itemCount: state.dynamicList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return DynamicItemComponent(
                        index: index,
                        data: state.dynamicList[index],
                        onTapImage: () {},
                        onTapItem: () {},
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
