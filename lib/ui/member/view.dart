import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/member_background_image/view.dart';
import 'package:talk/components/member_dynamics/view.dart';
import 'package:talk/components/member_hobbies_interests/view.dart';
import 'package:talk/components/member_photo_wall/view.dart';

import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class MemberPage extends StatelessWidget {
  MemberPage({super.key});

  final logic = Get.put(MemberLogic());
  final state = Get.find<MemberLogic>().state;

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: NoShadowScrollBehaviorHandle(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Obx(
            () => SizedBox(
              width: screenWidth,
              child: Column(
                children: [
                  MemberBackgroundImageComponent(
                    userInfo: state.userInfo.value,
                  ),
                  Gaps.vGap15,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 照片墙
                        Visibility(
                          visible: state.imagesList.isNotEmpty,
                          child: MemberPhotoWallComponent(
                            images: state.imagesList,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // 兴趣爱好
                        Visibility(
                          visible: state.userInfo.value.userExtend != null &&
                              state.userInfo.value.userExtend!.hobby.isNotEmpty,
                          child: MemberHobbiesInterestsComponent(
                            hobby: state.userInfo.value.userExtend!.hobby,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 个人动态
                  Visibility(
                    visible: state.dynamicList.isNotEmpty,
                    child: MemberDynamicsComponent(
                      lists: state.dynamicList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
