import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/models/accommpany_model.dart';

import 'logic.dart';

class AccompanyItemComponent extends StatelessWidget {
  AccompanyItemComponent({
    super.key,
    required this.data,
    required this.index,
    required this.onTapImage,
    required this.onTapItem,
  });

  final AccompanyModel data;
  final int index;
  final Function onTapImage;
  final Function onTapItem;

  final logic = Get.put(AccompanyItemLogic());
  final state = Get.find<AccompanyItemLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6, bottom: 8),
      child: Column(
        children: [
          _renderCover(context),
          Gaps.vGap15,
          _renderInfo(),
        ],
      ),
    );
  }

  // 用户头像信息
  Widget _renderCover(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AvatarComponent(
          url: data.avatar,
          width: 40,
          height: 40,
        ),
        Gaps.hGap10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF333333),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4),
            ),
            Text(
              data.time,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF999999),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _renderInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 90,
            height: 90,
            margin: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: LoadImage(
                image: data.image,
                fit: BoxFit.cover,
              ),
            )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff333333),
                    ),
                  ),
                  Gaps.vGap8,
                  Text(
                    data.acctime,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff999999),
                    ),
                  ),
                  Gaps.vGap4,
                  Text(
                    data.area,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff999999),
                    ),
                  ),
                  Gaps.vGap4,
                  const Text(
                    '米秀兰KTV',
                    style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                child: Container(
                  height: 28,
                  width: 58,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFFff7faa),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: const Text(
                    '约伴',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
