import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class UserAgreementPage extends StatelessWidget {
  UserAgreementPage({super.key});

  final logic = Get.put(UserAgreementLogic());
  final state = Get.find<UserAgreementLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "用户协议",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoShadowScrollBehaviorHandle(),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                top: 5,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Obx(
                () => Text(
                  state.txt.value,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
