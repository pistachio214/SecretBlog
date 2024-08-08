import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';
import 'package:talk/utils/toast_util.dart';

import 'state.dart';

class RegisterLogic extends GetxController {
  final RegisterState state = RegisterState();

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

  void registerAction() {
    if (state.currentIndex.value == "") {
      ToastUtil.shotToast("请先同意《用户协议》和《隐私政策》");
      return;
    }

    String username = state.usernameController.value.text;
    if (username.isEmpty) {
      ToastUtil.shotToast("手机号码是必填项");
      return;
    }
    String password = state.passwordController.value.text;
    if (password.isEmpty) {
      ToastUtil.shotToast("登录密码是必填项");
      return;
    }
    if (password.length < 8) {
      ToastUtil.shotToast("登录密码长度不能小于8位");
      return;
    }
    String rePassword = state.rePasswordController.value.text;
    if (password != rePassword) {
      ToastUtil.shotToast("两次密码不一致");
      return;
    }
  }

  @override
  void onClose() {
    state.usernameController.value.dispose();
    state.passwordController.value.dispose();
    state.rePasswordController.value.dispose();

    super.onClose();
  }
}
