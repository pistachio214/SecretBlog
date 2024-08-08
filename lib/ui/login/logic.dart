import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';
import 'package:talk/utils/toast_util.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  void checkRadio() {
    state.currentIndex.value = "1";
  }

  void cancelRadio() {
    state.currentIndex.value = "";
  }

  /// 用户协议
  void userAgreement() {
    Get.toNamed(AppRoutes.userAgreement);
  }

  /// 隐私政策
  void privacyPolicy() {
    Get.toNamed(AppRoutes.privacyPolicy);
  }

  /// 找回密码
  void retrievePassword() {
    ToastUtil.shotToast("内测阶段,找回密码请联系管理员！");
  }

  /// 登录
  void loginAction() {
    if (state.currentIndex.value == "") {
      ToastUtil.shotToast("请先同意《用户协议》和《隐私政策》");
      return;
    }
  }
}
