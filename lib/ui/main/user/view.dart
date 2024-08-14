import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/avatar_component.dart';
import 'package:talk/components/gaps_component.dart';
import 'package:talk/components/image_item_component.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/painter_left_component.dart';
import 'package:talk/components/tag_item_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';
import 'package:talk/lang/const.dart';
import 'package:talk/utils/toast_util.dart';

import 'logic.dart';

import 'package:talk/api/response_model/user_dynamic_response.dart'
as user_dynamic;

class UserComponent extends StatelessWidget {
  UserComponent({super.key});

  final logic = Get.put(UserLogic());
  final state = Get.find<UserLogic>().state;

  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: NoShadowScrollBehaviorHandle(),
        child: SingleChildScrollView(
          child: Obx(
            () => SizedBox(
              width: screenWidth,
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: screenWidth,
                        height: 360,
                        child: state.userInfo.value.userExtend != null &&
                                state.userInfo.value.userExtend!.bgImage !=
                                    null &&
                                state.userInfo.value.userExtend!.bgImage!
                                    .isNotEmpty
                            ? LoadImage(
                                image:
                                    state.userInfo.value.userExtend!.bgImage!,
                                fit: BoxFit.cover,
                              )
                            : LoadImage(
                                image: Const.defaultBgImage,
                                fit: BoxFit.cover,
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
                                top: 40,
                                left: 20,
                                right: 20,
                              ),
                              width: screenWidth,
                              height: 360,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () =>
                                            logic.onToSettingAction(),
                                        icon: const Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gaps.vGap15,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      state.userInfo.value.avatar != null &&
                                              state.userInfo.value.avatar!
                                                  .isNotEmpty
                                          ? AvatarComponent(
                                              url: state.userInfo.value.avatar!,
                                              width: 70,
                                              height: 70,
                                            )
                                          : AvatarComponent(
                                              url: Const.defaultAvatar,
                                              width: 70,
                                              height: 70,
                                            ),
                                      InkWell(
                                        onTap: () => logic.onToEditAction(),
                                        child: Container(
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
                                      ),
                                    ],
                                  ),
                                  Gaps.vGap15,
                                  Text(
                                    state.userInfo.value.nickname,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'PingFang-SC-Medium',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Gaps.vGap8,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Gaps.hGap8,
                                      buildSexWidget(),
                                    ],
                                  ),
                                  Gaps.vGap8,
                                  Text(
                                    state.userInfo.value.userExtend!.signature,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Gaps.vGap15,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${state.userInfo.value.dynamicNumber}',
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
                                            state.userInfo.value.likeNumber,
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
                                            '${state.userInfo.value.fansNumber}',
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
                                    indicatorPadding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    labelPadding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    isScrollable: true,
                                    labelStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffFF7E98),
                                      fontFamily: 'PingFang-SC-Medium',
                                      fontWeight: FontWeight.w800,
                                    ),
                                    unselectedLabelColor:
                                        const Color(0xff999999),
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
                  state.currentIndex.value == 0
                      ? _userProfileWidget()
                      : _userDynamicWidget(),
                ],
              ),
            ),
          ),
        ),
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

  Widget _userDynamicWidget() {
    return Container(
      color: Colors.white,
      // margin: EdgeInsets.only(bottom: 120),
      child: ListView.builder(
        itemCount: state.dynamicList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 0, bottom: 55),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          String year = getFormatYear(state.dynamicList[index].createdAt);
          String month = getFormatMonth(state.dynamicList[index].createdAt);
          String day = getFormatDay(state.dynamicList[index].createdAt);

          String? context = generateContext(state.dynamicList[index]);

          return Container(
            padding: const EdgeInsets.only(left: 15, right: 15,),
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
                            Visibility(
                              visible:
                                  state.dynamicList[index].files.isNotEmpty,
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
                                child: state.dynamicList[index].files.isNotEmpty
                                    ? LoadImage(
                                        image: state
                                            .dynamicList[index].files.first.url,
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
    );
  }

  Widget _userProfileWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          state.imagesList.isNotEmpty
              ? Column(
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
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff333333)),
                        )
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
                )
              : const SizedBox.shrink(),
          const SizedBox(height: 20),
          state.userInfo.value.userExtend != null &&
                  state.userInfo.value.userExtend!.hobby.isNotEmpty
              ? Column(
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
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff333333)),
                        )
                      ],
                    ),
                    Gaps.vGap8,
                    Wrap(
                      spacing: 10,
                      runSpacing: 8,
                      children: List.generate(
                        state.userInfo.value.userExtend!.hobby.length,
                        (index) {
                          return TagItemComponent(
                            text: state.userInfo.value.userExtend!.hobby[index],
                          );
                        },
                      ),
                    )
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  List<Widget> buildImageItem() {
    List<Widget> temp = List.generate(state.imagesList.length, (index) {
      return ImageItemComponent(
        imageUrl: state.imagesList[index].url,
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

  Widget buildSexWidget() {
    if (state.userInfo.value.userExtend != null) {
      if (state.userInfo.value.userExtend!.sex == 1) {
        return Container(
          padding: const EdgeInsets.only(
            top: 2,
            left: 4,
            right: 4,
            bottom: 2,
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
        );
      }

      if (state.userInfo.value.userExtend!.sex == 2) {
        return Container(
          padding: const EdgeInsets.only(
            top: 2,
            left: 4,
            right: 4,
            bottom: 2,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(12),
            ),
            color: Color(0xffE86494),
          ),
          child: const Text(
            '♀',
            style: TextStyle(
              fontFamily: 'PingFang-SC-Medium',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        );
      }
    }

    return const SizedBox.shrink();
  }
}
