import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:talk/components/main/dark_app_bar_component.dart';
import 'package:talk/utils/icon_font_util.dart';

import 'logic.dart';

class DynamicComponent extends StatelessWidget {
  DynamicComponent({super.key});

  final logic = Get.put(DynamicLogic());
  final state = Get.find<DynamicLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DarkAppBarComponent(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(
          () => Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        labelColor: const Color(0xFF0a0f1e),
                        indicatorColor: const Color(0xffFF7E98),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        tabs: const [
                          Tab(text: "关注"),
                          Tab(text: "推荐"),
                          Tab(text: "自拍"),
                          Tab(text: "视频"),
                        ],
                        controller: logic.tabController,
                        indicatorWeight: 3,
                        indicatorPadding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                        isScrollable: true,
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xffFF7E98),
                          fontWeight: FontWeight.w800,
                        ),
                        unselectedLabelColor: const Color(0xff999999),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff999999),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        onTap: (index) => logic.jumpToPage(index),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconFont.icon_sousuo,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView.builder(
                    key: UniqueKey(),
                    itemCount: state.pageList.length,
                    onPageChanged: (int index) => logic.onPageChanged(index),
                    controller: logic.pageController,
                    itemBuilder: (_, index) => state.pageList[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
