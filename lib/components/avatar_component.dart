import 'package:flutter/material.dart';

import 'load_image_util.dart';

class AvatarComponent extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const AvatarComponent({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: LoadImage(
        image: url,
        width: width,
        height: height,
      ),
    );
  }
}
