import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk/components/load_image_util.dart';

import 'logic.dart';

class DynamicItemImageComponent extends StatelessWidget {
  DynamicItemImageComponent({
    super.key,
    required this.image,
    required this.onTap,
  });

  final List<String> image;
  final Function onTap;

  final logic = Get.put(DynamicItemImageLogic());
  final state = Get.find<DynamicItemImageLogic>().state;

  @override
  Widget build(BuildContext context) {
    // return const SizedBox(child: Text("images"),);
    return image.length > 1 ? gridItemImage() : itemImage();
  }

  Widget itemImage() {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: LoadImage(image: image[0], fit: BoxFit.cover),
          )),
    );
  }

  Widget gridItemImage() {
    // return const SizedBox(child: Text("images"),);
    return GridView.builder(
      shrinkWrap: true,
      itemCount: image.length > 9 ? 9 : image.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        Get.log(image[index]);
        return GestureDetector(
          onTap: () => onTap(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LoadImage(image: image[index], fit: BoxFit.cover),
            // child: const SizedBox(child: Text("images"),),
          ),
        );
      },
    );
  }
}
