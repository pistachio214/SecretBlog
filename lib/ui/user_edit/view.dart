import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class UserEditPage extends StatelessWidget {
  UserEditPage({super.key});

  final logic = Get.put(UserEditLogic());
  final state = Get.find<UserEditLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoShadowScrollBehaviorHandle(),
      child: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: 300,
                width: Get.width,
                color: Colors.green,
                child: const LoadImage(
                  image:
                      'http://pic.imeitou.com/uploads/allimg/220125/5-220125140630.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: const BackButton(
                    color: Color(0xffDBE9ED),
                  ),
                  actions: [
                    Container(
                      height: 30,
                      margin: const EdgeInsets.only(right: 20),
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Get.log("点击更换背景封面");
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            const Color(0xff9CB4C2).withOpacity(0.6),
                          ),
                          visualDensity: VisualDensity.compact,
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "更换封面",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
                body: Container(
                  margin: const EdgeInsets.only(top: 150),
                  width: Get.width,
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const AvatarComponent(
                              url:
                                  'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
                              width: 120,
                              height: 120,
                            ),
                            InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                Get.log("点击更换头像");
                              },
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(60),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "更换头像",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            userItemWidget("名字", "阿卟叽叽"),
                            userItemWidget("性别", "男"),
                            userItemWidget("生日", "1994-05-20"),
                            userItemWidget("个性签名", "须知少时拏云志 曾许人间第一流"),
                            userItemWidget("标签", "大佬天下第一"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userItemWidget(String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xff73737B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}
