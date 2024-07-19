import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/models/near_model.dart';

import 'logic.dart';

class NearItemComponent extends StatelessWidget {
  NearItemComponent({super.key, required this.data});

  final NearModel data;

  final logic = Get.put(NearItemLogic());
  final state = Get.find<NearItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xFFFFF3F7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AvatarComponent(
            url: data.avatar,
            width: 40,
            height: 40,
          ),
          Gaps.vGap8,
          Text(
            data.name,
            style: const TextStyle(
              color: Color(0xff333333),
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          Gaps.vGap8,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '90后',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.hGap8,
              data.sex == 1
                  ? Container(
                      padding: const EdgeInsets.only(
                        top: 2,
                        left: 4,
                        right: 4,
                        bottom: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(12),
                        ),
                      ),
                      child: const Text(
                        '♂',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.only(
                        top: 2,
                        left: 4,
                        right: 4,
                        bottom: 2,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFFff7faa),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(12),
                        ),
                      ),
                      child: const Text(
                        '♀',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
            ],
          ),
          Gaps.vGap10,
          Text(
            '距离${data.distance}km',
            style: const TextStyle(
              color: Color(0xFF999999),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
