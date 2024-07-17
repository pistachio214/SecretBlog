import 'package:cached_network_image/cached_network_image.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:talk/utils/image_util.dart';

/// 图片加载（支持本地与网络图片）
class LoadImage extends StatelessWidget {
  const LoadImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.format = 'png',
    this.holderImg = 'none',
  });

  final String image;
  final double? width;
  final double? height;

  final BoxFit fit;
  final String format;
  final String holderImg;

  @override
  Widget build(BuildContext context) {
    if (TextUtil.isEmpty(image) || image == 'null') {
      return LoadAssetImage(
        image: holderImg,
        height: height,
        width: width,
        fit: fit,
        format: format,
      );
    } else {
      if (image.startsWith('http')) {
        return CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => LoadAssetImage(
            image: holderImg,
            height: height,
            width: width,
            fit: fit,
          ),
          errorWidget: (context, url, error) => LoadAssetImage(
            image: holderImg,
            height: height,
            width: width,
            fit: fit,
          ),
          width: width,
          height: height,
          fit: fit,
        );
      } else {
        return LoadAssetImage(
          image: image,
          height: height,
          width: width,
          fit: fit,
          format: format,
        );
      }
    }
  }
}

/// 加载本地资源图片
class LoadAssetImage extends StatelessWidget {
  const LoadAssetImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    required this.fit,
    this.format = 'png',
    this.color,
  });

  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final String format;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageUtils.getImgPath(image, format: format),
      height: height,
      width: width,
      fit: fit,
      color: color,

      /// 忽略图片语义
      excludeFromSemantics: true,
    );
  }
}
