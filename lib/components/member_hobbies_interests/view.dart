import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/tag_item_component.dart';

import 'logic.dart';

class MemberHobbiesInterestsComponent extends StatelessWidget {
  MemberHobbiesInterestsComponent({super.key, required this.hobby});

  final List<String> hobby;

  final logic = Get.put(MemberHobbiesInterestsLogic());
  final state = Get.find<MemberHobbiesInterestsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.whatshot,
              size: 20,
              color: Colors.purple,
            ),
            Gaps.hGap8,
            Text(
              '兴趣爱好',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff333333),
              ),
            )
          ],
        ),
        Gaps.vGap8,
        Wrap(
          spacing: 10,
          runSpacing: 8,
          children: List.generate(hobby.length, (index) {
            return TagItemComponent(
              text: hobby[index],
            );
          }),
        ),
      ],
    );
  }
}
