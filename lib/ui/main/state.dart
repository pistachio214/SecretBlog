import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:talk/ui/main/discovery/view.dart';

import 'package:talk/utils/icon_font_util.dart';

import 'package:talk/ui/main/dynamic/view.dart';
import 'package:talk/ui/main/message/view.dart';

class MainState {
  late List<BottomNavigationBarItem> bottomTabs;
  late RxList<Widget> tabBodies;
  late RxInt currentIndex;

  MainState() {
    currentIndex = 0.obs;

    // 底部选项卡
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          IconFont.icon_xingqiu,
          size: 30,
        ),
        label: "星球",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          IconFont.icon_redu,
          size: 30,
        ),
        label: "热度",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/bottom_add.png',
          width: 26,
        ),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          IconFont.icon_duihua,
          size: 30,
        ),
        label: "对话",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          IconFont.icon_yonghu,
          size: 30,
        ),
        label: "用户",
      ),
    ];

    tabBodies = <Widget>[
      DynamicComponent(),
      DiscoveryComponent(),
      const Center(
        child: Text("+"),
      ),
      MessageComponent(),
      const Center(
        child: Text("用户"),
      ),
    ].obs;
  }
}
