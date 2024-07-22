import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/main/dynamic/dynamic_item_image/view.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';
import 'package:talk/utils/icon_font_util.dart';

import 'logic.dart';

class DynamicDetailPage extends StatelessWidget {
  DynamicDetailPage({super.key});

  final logic = Get.put(DynamicDetailLogic());
  final state = Get.find<DynamicDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "动态",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoShadowScrollBehaviorHandle(),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap15,
                  _renderCover(context),
                  Gaps.vGap15,
                  DynamicItemImageComponent(
                    image: state.images,
                    onTap: () {},
                  ),
                  Gaps.vGap15,
                  const Text(
                    '花半开最美，情留白最浓，懂得给生命留\n白，亦是一种生活的智慧。淡泊以明志，\n'
                    '宁静以致远，懂得给心灵留白，方能在纷杂繁琐的世界，淡看得失，宠辱不惊，去意'
                    '无留；懂得给感情留白，方能持久生香，\n留有余地，相互欣赏，拥有默契;',
                    softWrap: true,
                    maxLines: null,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Gaps.vGap15,
                  _renderDynamicTagAndComment(context),
                  Gaps.vGap15,
                  const Text(
                    '评论(4)',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff999999),
                    ),
                  ),
                  Gaps.vGap15,
                  _renderCommonItem(),
                  _renderCommonItem(),
                  _renderCommonItem(),
                  _renderCommonItem(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderCommonItem() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AvatarComponent(
          url:
              'https://img2.woyaogexing.com/2020/02/24/7d8680e03a3d46d1a84182dce9a77a33!400x400.jpeg',
          width: 34,
          height: 34,
        ),
        Gaps.hGap10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '奇磨叽',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFff7faa),
                        ),
                      ),
                      Gaps.vGap4,
                      Text(
                        '12分钟',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                  Text('+ 关注',
                      style: TextStyle(color: Color(0xFFff7faa), fontSize: 14)),
                ],
              ),
              Gaps.vGap10,
              Text(
                '非常喜欢一句话, 幸福是可以存储的❤',
                softWrap: true,
                maxLines: null,
                style: TextStyle(fontSize: 16.0, color: Color(0xff333333)),
              ),
              Gaps.vGap10,
              Icon(
                IconFont.icon_guanzhu,
                size: 20,
                color: Color(0xFFff7faa),
              ),
              Gaps.vGap10,
              Divider(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _renderDynamicTagAndComment(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFff7faa),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 20.0,
                alignment: Alignment.center,
                child: const Text(
                  '# 话题',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
        Gaps.vGap15,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              IconFont.icon_fabu,
              size: 20,
              color: Color(0xFF999999),
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconFont.icon_guanzhu,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      '32',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
                Gaps.hGap12,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      IconFont.icon_liaotian,
                      size: 20,
                    ),
                    Gaps.hGap8,
                    Text(
                      '38',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap8,
      ],
    );
  }

  Widget _renderCover(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AvatarComponent(
              url:
                  'https://img2.woyaogexing.com/2020/02/24/7d8680e03a3d46d1a84182dce9a77a33!400x400.jpeg',
              width: 40,
              height: 40,
            ),
            Gaps.hGap8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '奇磨叽',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF333333),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                ),
                Text(
                  '他大舅他二舅都是他舅,高桌子矮板凳都是木头',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF999999),
                  ),
                ),
              ],
            ),
          ],
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {},
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
              '关注',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        )
      ],
    );
  }
}
