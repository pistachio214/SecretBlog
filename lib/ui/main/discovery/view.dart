import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/dark_app_bar_component.dart';

import 'logic.dart';

class DiscoveryComponent extends StatelessWidget {
  DiscoveryComponent({super.key});

  final logic = Get.put(DiscoveryLogic());
  final state = Get.find<DiscoveryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DarkAppBarComponent(),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      child: TabBar(
                        // 设置tab显示方式
                        tabAlignment: TabAlignment.start,
                        tabs: const [
                          Tab(text: "话题"),
                          Tab(text: "附近"),
                          Tab(text: "约伴"),
                          Tab(text: "看法"),
                        ],
                        controller: logic.tabController,
                        labelColor: const Color(0xFF0a0f1e),
                        indicatorColor: const Color(0xffFF7E98),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
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
                  )
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
    );
  }
}
