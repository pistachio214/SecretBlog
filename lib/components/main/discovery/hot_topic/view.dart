import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HotTopicComponent extends StatelessWidget {
  HotTopicComponent({super.key});

  final logic = Get.put(HotTopicLogic());
  final state = Get.find<HotTopicLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 185,
          width: 165,
          decoration: const BoxDecoration(
            color: Color(0xffff2a7c),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              const Positioned(
                top: 20,
                left: 16,
                child: Text(
                  '今日最热',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              const Positioned(
                top: 50,
                left: 16,
                child: SizedBox(
                  width: 98,
                  child: Text(
                    '双子座的那些小事情',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: 90,
                child: Image.asset(
                  'assets/images/szz.png',
                  width: 92,
                  height: 80,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 185,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 175,
                height: 84,
                decoration: const BoxDecoration(
                  color: Color(0xFFff7faa),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Text(''),
              ),
              Container(
                width: 175,
                height: 84,
                decoration: const BoxDecoration(
                  color: Color(0xFFff7faa),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Text(''),
              )
            ],
          ),
        )
      ],
    );
  }
}
