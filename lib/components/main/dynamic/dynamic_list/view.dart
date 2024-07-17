import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:talk/components/load_image_util.dart';
import 'package:talk/components/main/dynamic/dynamic_item/view.dart';
import 'package:talk/components/talk_app_list_component.dart';
import 'package:talk/handle/no_shadow_scroll_behavior_handle.dart';

import 'logic.dart';

class DynamicListComponent extends StatelessWidget {
  DynamicListComponent({super.key});

  final logic = Get.put(DynamicListLogic());
  final state = Get.find<DynamicListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: NoShadowScrollBehaviorHandle(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: TalkAppListComponent(
            controller: state.easyController.value,
            onRefresh: () => logic.refreshData(),
            onLoadMore: () => logic.addMoreData(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    height: 170.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Swiper(
                        key: UniqueKey(),
                        index: 0,
                        itemCount: 4,
                        autoplay: false,
                        itemBuilder: (BuildContext context, int index) {
                          return _swiperBuilder(context, index);
                        },
                        duration: 3000,
                        viewportFraction: 0.8,
                        scale: 0.8,
                        pagination: null,
                        control: null,
                        onTap: (int index) {
                          Get.log("点击的轮播图");
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: ListView.builder(
                        itemCount: state.dynamicList.isNotEmpty
                            ? state.dynamicList.length
                            : 0,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return DynamicItemComponent(
                            index: index,
                            data: state.dynamicList[index],
                            onTapImage: () {
                              // Provider.of<CommonProvider>(context, listen: false)
                              //     .setDynamicImageList(dynamicList[index].image);
                              // NavigatorUtils.push(
                              //     context, DynamicsRouter.photoViewGalleryScreen);
                            },
                            onTapItem: () {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: const LoadImage(
        image: "index_banner",
        fit: BoxFit.cover,
      ),
    );
  }
}
