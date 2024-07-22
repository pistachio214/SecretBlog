import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/image_item_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/painter_left_component.dart';
import 'package:talk/components/tag_item_component.dart';

import 'logic.dart';

class UserComponent extends StatelessWidget {
  UserComponent({super.key});

  final logic = Get.put(UserLogic());
  final state = Get.find<UserLogic>().state;

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: screenWidth,
                    height: 360,
                    child: LoadImage(
                      image: state.userInfo.value.bgImage!,
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
                              top: 40, left: 20, right: 20),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const AvatarComponent(
                                    url:
                                        'https://pic4.zhimg.com/80/v2-a1692d6717a7c22fb277a6a1e4443a98_hd.jpg',
                                    width: 70,
                                    height: 70,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 28,
                                    width: 58,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFff7faa),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(18),
                                      ),
                                    ),
                                    child: const Text(
                                      '编辑',
                                      style: TextStyle(
                                        fontFamily: 'PingFang-SC-Medium',
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gaps.vGap15,
                              Text(
                                "${state.userInfo.value.name}",
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
                                    '${state.userInfo.value.age}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Gaps.hGap8,
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 4,
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
                                "${state.userInfo.value.slign}",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${state.userInfo.value.dynamic}',
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
                                  const SizedBox(width: 32),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${state.userInfo.value.lovenumber}',
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
                                  const SizedBox(width: 32),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${state.userInfo.value.footprint}',
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
                                  const SizedBox(width: 32),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${state.userInfo.value.fans}k',
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
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsets.only(left: 8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TabBar(
                                // 设置tab显示方式
                                tabAlignment: TabAlignment.start,
                                labelColor: const Color(0xffFF7E98),
                                indicatorColor: const Color(0xffFF7E98),
                                tabs: const [
                                  Tab(text: "资料"),
                                  Tab(text: "动态"),
                                ],
                                controller: logic.tabController,
                                indicatorWeight: 3,
                                indicatorPadding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                labelPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                isScrollable: true,
                                labelStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffFF7E98),
                                  fontFamily: 'PingFang-SC-Medium',
                                  fontWeight: FontWeight.w800,
                                ),
                                unselectedLabelColor: const Color(0xff999999),
                                unselectedLabelStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff999999),
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,
                                onTap: (index) => logic.onPageChange(index),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gaps.vGap15,
              Obx(
                () => state.currentIndex.value == 0
                    ? _userProfileWidget()
                    : _userDynamicWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userDynamicWidget() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 0),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
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
                          color: Color(0xff333333)),
                    ),
                    Gaps.vGap4,
                    Text(
                      '2020.2',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'PingFang-SC-Medium',
                          color: Color(0xff999999)),
                    ),
                  ],
                ),
                Gaps.hGap15,
                Expanded(
                  child: CustomPaint(
                    painter: PainterLeftComponent(const Color(0xffDBDBDB)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 15),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 240,
                              height: 240,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(60, 170, 250, 0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
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
                            )
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
    );
  }

  Widget _userProfileWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
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
                    '照片',
                    style: TextStyle(fontSize: 16, color: Color(0xff333333)),
                  )
                ],
              ),
              Gaps.vGap8,
              Row(
                children: _buildImagesItem(),
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
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
                    style: TextStyle(fontSize: 16, color: Color(0xff333333)),
                  )
                ],
              ),
              Gaps.vGap8,
              Wrap(
                spacing: 10,
                runSpacing: 8,
                children: _buildTagItem(),
              )
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildImagesItem() =>
      List.generate(state.userInfo.value.imagelist!.length, (index) {
        return ImageItemComponent(
          imageUrl: state.userInfo.value.imagelist![index],
        );
      });

  List<Widget> _buildTagItem() =>
      List.generate(state.userInfo.value.taglist!.length, (index) {
        return TagItemComponent(
          text: state.userInfo.value.taglist![index],
        );
      });
}
