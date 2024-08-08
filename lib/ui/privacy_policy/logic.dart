import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'state.dart';

class PrivacyPolicyLogic extends GetxController {
  final PrivacyPolicyState state = PrivacyPolicyState();

  @override
  Future<void> onInit() async {
    String fileText =
        await rootBundle.loadString('assets/txt/privacy_policy.txt');
    state.txt.value = fileText;

    super.onInit();
  }
}
