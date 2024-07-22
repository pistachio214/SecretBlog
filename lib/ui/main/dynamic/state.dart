import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/dynamic/dynamic_follow/view.dart';
import 'package:talk/components/main/dynamic/dynamic_list/view.dart';
import 'package:talk/components/main/dynamic/dynamic_selfie/view.dart';

class DynamicState {
  late RxList<Widget> pageList;

  DynamicState() {
    pageList = <Widget>[
      DynamicFollowComponent(),
      DynamicListComponent(),
      DynamicSelfieComponent(),
      const SizedBox(
        child: Center(
          child: Text("视频界面,还没想到做抖音那种滑动还是列表"),
        ),
      ),
    ].obs;


  }
}
