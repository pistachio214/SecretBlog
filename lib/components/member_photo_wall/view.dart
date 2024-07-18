import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/image_item_component.dart';
import 'package:talk/models/user_model.dart';

import 'logic.dart';

class MemberPhotoWallComponent extends StatelessWidget {
  MemberPhotoWallComponent({
    super.key,
    required this.userInfo,
  });

  final UserModel userInfo;

  final logic = Get.put(MemberPhotoWallLogic());
  final state = Get.find<MemberPhotoWallLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.image,
              size: 20,
              color: Color(0xffFF7E98),
            ),
            Gaps.hGap8,
            Text(
              "照片",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff333333),
              ),
            ),
          ],
        ),
        Gaps.vGap8,
        Row(
          children: buildImageItem(),
        )
      ],
    );
  }

  List<Widget> buildImageItem() =>
      List.generate(userInfo.imagelist!.length, (index) {
        return ImageItemComponent(
          imageUrl: userInfo.imagelist![index],
        );
      });
}
