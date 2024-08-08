import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final logic = Get.put(RegisterLogic());
  final state = Get.find<RegisterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("注册界面"),
    );
  }
}
