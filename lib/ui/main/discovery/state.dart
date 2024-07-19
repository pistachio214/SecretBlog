import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/main/discovery/accompany/view.dart';
import 'package:talk/components/main/discovery/nearby/view.dart';
import 'package:talk/components/main/discovery/top_view/view.dart';
import 'package:talk/components/main/discovery/topic/view.dart';

class DiscoveryState {
  late RxList<Widget> pageList;

  DiscoveryState() {
    pageList = <Widget>[
      TopicComponent(),
      NearbyComponent(),
      AccompanyComponent(),
      TopViewComponent(),
    ].obs;
  }
}
