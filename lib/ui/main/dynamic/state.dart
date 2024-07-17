import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/dynamic/dynamic_list/view.dart';

class DynamicState {
  late RxList<Widget> pageList;

  DynamicState() {
    pageList = <Widget>[
      Container(
        child: Text("FollowPage"),
      ),
      DynamicListComponent(),
      Container(
        child: Text("DynamicSelfiePage"),
      ),
      Container(),
    ].obs;


  }
}
