import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/painter_left_component.dart';

import 'logic.dart';

import 'package:talk/api/response_model/user_dynamic_response.dart'
    as user_dynamic;

class MemberDynamicsComponent extends StatelessWidget {
  MemberDynamicsComponent({
    super.key,
    required this.lists,
  });

  final logic = Get.put(MemberDynamicsLogic());
  final state = Get.find<MemberDynamicsLogic>().state;

  final List<user_dynamic.Items> lists;

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
              itemCount: lists.length,
              itemBuilder: (BuildContext context, int index) {
                String year = getFormatYear(lists[index].createdAt);
                String month = getFormatMonth(lists[index].createdAt);
                String day = getFormatDay(lists[index].createdAt);

                String? context = generateContext(lists[index]);

                return Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            day,
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'PingFang-SC-Medium',
                              color: Color(0xff333333),
                            ),
                          ),
                          Gaps.vGap4,
                          Text(
                            "$year.$month",
                            style: const TextStyle(
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
                                  Visibility(
                                    visible: lists[index].files.isNotEmpty,
                                    child: Container(
                                      width: 240,
                                      height: 240,
                                      margin: const EdgeInsets.only(bottom: 10),
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
                                      child: lists[index].files.isNotEmpty
                                          ? LoadImage(
                                              image:
                                                  lists[index].files.first.url,
                                              fit: BoxFit.cover,
                                            )
                                          : const SizedBox.shrink(),
                                    ),
                                  ),
                                  Visibility(
                                    visible: context != null,
                                    child: Text(
                                      "$context",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'PingFang-SC-Medium',
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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

  String? generateContext(user_dynamic.Items data) {
    if (data.title.isNotEmpty) {
      return data.title;
    }

    if (data.content.isNotEmpty) {
      return data.content;
    }

    return null;
  }

  String getFormatYear(String date) {
    // 解析时间字符串为DateTime对象
    DateTime dateTime = DateTime.parse(date);

    return dateTime.year.toString();
  }

  String getFormatMonth(String date) {
    // 解析时间字符串为DateTime对象
    DateTime dateTime = DateTime.parse(date);

    return dateTime.month.toString();
  }

  String getFormatDay(String date) {
    // 解析时间字符串为DateTime对象
    DateTime dateTime = DateTime.parse(date);

    return dateTime.day.toString();
  }
}
