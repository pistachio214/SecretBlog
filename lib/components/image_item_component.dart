import 'package:flutter/material.dart';
import 'package:talk/components/load_image_util.dart';

class ImageItemComponent extends StatelessWidget {
  const ImageItemComponent({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: LoadImage(
          image: imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
