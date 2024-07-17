import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  final logic = Get.put(MessageLogic());
  final state = Get.find<MessageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
