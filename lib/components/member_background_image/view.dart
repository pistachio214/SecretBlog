import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/models/user_model.dart';

import 'logic.dart';

class MemberBackgroundImageComponent extends StatelessWidget {
  MemberBackgroundImageComponent({
    super.key,
    required this.userInfo,
  });

  final UserModel userInfo;

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
          child: LoadImage(
            image: userInfo.bgImage!,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 28,
                        ),
                      ],
                    ),
                    Gaps.vGap15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AvatarComponent(
                          url:
                              'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
                          width: 70,
                          height: 70,
                        ),
                        Container(
                          width: 58,
                          height: 28,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xFFff7faa),
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                          ),
                          child: const Text(
                            "编辑",
                            style: TextStyle(
                              fontFamily: 'PingFang-SC-Medium',
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                    Gaps.vGap15,
                    Text(
                      userInfo.name!,
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
                        Text(
                          '${userInfo.age}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Gaps.hGap8,
                        Container(
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
                        ),
                      ],
                    ),
                    Gaps.vGap8,
                    Text(
                      userInfo.slign!,
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
                              '${userInfo.dynamic}',
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
                        const SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userInfo.lovenumber}',
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
                        const SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userInfo.footprint}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'PingFang-SC-Medium',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Gaps.vGap8,
                            const Text(
                              '足迹',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xfff5f5f5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userInfo.fans}k',
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
}
