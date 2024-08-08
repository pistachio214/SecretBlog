import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'state.dart';

class UserAgreementLogic extends GetxController {
  final UserAgreementState state = UserAgreementState();

  @override
  Future<void> onInit() async {
    String fileText =
    await rootBundle.loadString('assets/txt/user_agreement.txt');
    state.txt.value = fileText;

    super.onInit();
  }
}
