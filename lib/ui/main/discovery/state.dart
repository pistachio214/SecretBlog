import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/discovery/nearby/view.dart';
import 'package:talk/components/main/discovery/topic/view.dart';

class DiscoveryState {
  late RxList<Widget> pageList;

  DiscoveryState() {
    pageList = <Widget>[
      TopicComponent(),
      NearbyComponent(),
      Container(
        child: Text("约伴"),
      ),
      Container(
        child: Text("看法"),
      ),
    ].obs;
  }
}
