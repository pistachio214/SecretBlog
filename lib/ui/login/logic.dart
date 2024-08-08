import 'package:get/get.dart';
import 'package:talk/routers/app_routes.dart';
import 'package:talk/utils/toast_util.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  /// 用户协议
  void userAgreement() {
    Get.toNamed(AppRoutes.userAgreement);
  }

  /// 隐私政策
  void privacyPolicy() {
    Get.toNamed(AppRoutes.privacyPolicy);
  }

  /// 前往注册界面
  void goRegister() {
    Get.toNamed(AppRoutes.register);
  }

  /// 找回密码
  void retrievePassword() {
    ToastUtil.shotToast("内测阶段,找回密码请联系管理员！");
  }

  /// 登录
  void loginAction() {
    String username = state.usernameController.value.text;
    String password = state.passwordController.value.text;

    if (username.isEmpty) {
      ToastUtil.shotToast("登录账号不能为空");
      return;
    }

    if (password.isEmpty) {
      ToastUtil.shotToast("登录密码不能为空");
      return;
    }

    
  }
}
