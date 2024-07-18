import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';

import 'state.dart';

class MessageLogic extends GetxController {
  final MessageState state = MessageState();

  void goPrivateChat(String title) {
    Get.toNamed(AppRoutes.messagePrivateChat, arguments: title);
  }
}
