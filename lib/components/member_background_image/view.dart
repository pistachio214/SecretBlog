import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/lang/const.dart';

import 'logic.dart';

import 'package:talk/api/response_model/user_mine_response.dart' as user_mine;

class MemberBackgroundImageComponent extends StatelessWidget {
  MemberBackgroundImageComponent({
    super.key,
    required this.userInfo,
  });

  final user_mine.Data userInfo;

  final logic = Get.put(MemberBackgroundImageComponentLogic());
  final state = Get.find<MemberBackgroundImageComponentLogic>().state;

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: 360,
          child: userInfo.userExtend != null &&
                  userInfo.userExtend!.bgImage != null &&
                  userInfo.userExtend!.bgImage!.isNotEmpty
              ? LoadImage(
                  image: userInfo.userExtend!.bgImage!,
                  fit: BoxFit.cover,
                )
              : LoadImage(
                  image: Const.defaultBgImage,
                  fit: BoxFit.cover,
                ),
        ),
        Container(
          height: 360,
          color: const Color.fromRGBO(0, 0, 0, 0.1),
        ),
        Align(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 20,
                ),
                width: screenWidth,
                height: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Gaps.vGap15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        userInfo.avatar != null && userInfo.avatar!.isNotEmpty
                            ? AvatarComponent(
                                url: userInfo.avatar!,
                                width: 70,
                                height: 70,
                              )
                            : AvatarComponent(
                                url: Const.defaultAvatar,
                                width: 70,
                                height: 70,
                              ),
                      ],
                    ),
                    Gaps.vGap15,
                    Text(
                      userInfo.nickname,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'PingFang-SC-Medium',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Gaps.vGap8,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildSexWidget(),
                      ],
                    ),
                    Gaps.vGap8,
                    Text(
                      userInfo.userExtend!.signature,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Gaps.vGap15,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userInfo.dynamicNumber}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'PingFang-SC-Medium',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Gaps.vGap8,
                            const Text(
                              '动态',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xfff5f5f5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userInfo.likeNumber,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'PingFang-SC-Medium',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Gaps.vGap8,
                            const Text(
                              '赞',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xfff5f5f5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userInfo.fansNumber}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'PingFang-SC-Medium',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Gaps.vGap8,
                            const Text(
                              '粉丝',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xfff5f5f5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildSexWidget() {
    if (userInfo.userExtend != null) {
      if (userInfo.userExtend!.sex == 1) {
        return Container(
          padding: const EdgeInsets.only(
            top: 2,
            left: 4,
            right: 4,
            bottom: 2,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(12),
            ),
            color: Colors.blue[300],
          ),
          child: const Text(
            '♂',
            style: TextStyle(
              fontFamily: 'PingFang-SC-Medium',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        );
      }

      if (userInfo.userExtend!.sex == 2) {
        return Container(
          padding: const EdgeInsets.only(
            top: 2,
            left: 4,
            right: 4,
            bottom: 2,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(12),
            ),
            color: Color(0xffE86494),
          ),
          child: const Text(
            '♀',
            style: TextStyle(
              fontFamily: 'PingFang-SC-Medium',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        );
      }
    }

    return const SizedBox.shrink();
  }
}
