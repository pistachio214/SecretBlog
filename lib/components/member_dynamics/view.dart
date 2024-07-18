import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/painter_left_component.dart';

import 'logic.dart';

class MemberDynamicsComponent extends StatelessWidget {
  MemberDynamicsComponent({super.key});

  final logic = Get.put(MemberDynamicsLogic());
  final state = Get.find<MemberDynamicsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.loyalty_outlined,
                    size: 20,
                    color: Color(0xffFF7E98),
                  ),
                  Gaps.hGap8,
                  Text(
                    '个人动态',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff333333),
                    ),
                  )
                ],
              ),
            ],
          ),
          Gaps.vGap8,
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0),
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '22',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'PingFang-SC-Medium',
                              color: Color(0xff333333),
                            ),
                          ),
                          Gaps.vGap4,
                          Text(
                            '2020.2',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'PingFang-SC-Medium',
                              color: Color(0xff999999),
                            ),
                          ),
                        ],
                      ),
                      Gaps.hGap15,
                      Expanded(
                          child: CustomPaint(
                        painter: PainterLeftComponent(
                          const Color(0xffDBDBDB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            bottom: 15,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 240,
                                  height: 240,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Color.fromRGBO(
                                      60,
                                      170,
                                      250,
                                      0.2,
                                    ),
                                  ),
                                  child: const LoadImage(
                                    image:
                                        'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Gaps.vGap12,
                                const Text(
                                  '为何靓仔总是那么得孤独~',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PingFang-SC-Medium',
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
