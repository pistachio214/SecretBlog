import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final logic = Get.put(SettingLogic());
  final state = Get.find<SettingLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "设置",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ScrollConfiguration(
        behavior: NoShadowScrollBehaviorHandle(),
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height,
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    alignment: Alignment.centerLeft,
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.only(left: 40),
                    ),
                  ),
                  onPressed: () => quitSystemUI(context),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.login_outlined,
                        color: Colors.black,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "退出登录",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void quitSystemUI(BuildContext widgetContext) {
    showCupertinoDialog(
      context: widgetContext,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text("退出系统"),
          ),
          content: const Text(
            "退出系统后会清理掉所有的数据,请确定是否退出系统?",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: [
            CupertinoDialogAction(
              isDestructiveAction: true,
              child: const Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            CupertinoDialogAction(
              child: const Text(
                "确定",
                style: TextStyle(color: Colors.blueAccent),
              ),
              onPressed: () => logic.quitSystemAction(context),
            ),
          ],
        );
      },
    );
  }
}
