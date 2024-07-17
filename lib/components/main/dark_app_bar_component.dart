import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const DarkAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: null,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0.0);
}
