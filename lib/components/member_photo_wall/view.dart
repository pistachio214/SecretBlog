import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/image_item_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';
import 'package:talk/utils/toast_util.dart';

import 'logic.dart';

import 'package:talk/api/response_model/user_profile_response.dart'
    as user_profile;

class MemberPhotoWallComponent extends StatelessWidget {
  MemberPhotoWallComponent({
    super.key,
    required this.images,
  });

  final List<user_profile.Items> images;

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
        ScrollConfiguration(
          behavior: NoShadowScrollBehaviorHandle(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: buildImageItem(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> buildImageItem() {
    List<Widget> temp = List.generate(images.length, (index) {
      return ImageItemComponent(
        imageUrl: images[index].url,
      );
    });

    Widget moreImage = moreImageWidget();
    temp.add(moreImage);

    return temp;
  }

  Widget moreImageWidget() {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        //TODO 后续以图片墙模式查看全部图片
        ToastUtil.shotToast("图片墙模式查看全部图片");
      },
      child: Container(
        width: 80,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffFF7E98),
          borderRadius: BorderRadius.circular(8.0),
          // border: Border.all(color: const Color(0xffFF7E98), width: 1),
        ),
        child: const Text(
          "查看更多",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
