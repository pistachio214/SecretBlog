import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talk/api/auth_api.dart';
import 'package:talk/api/request_model/login_request.dart';
import 'package:talk/api/response_model/login_response.dart';
import 'package:talk/lang/http_status.dart';
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

    LoginRequest request = LoginRequest(username: username, password: password);
    AuthApi.loginAction(request).then((LoginResponse response) {
      if (response.code == HttpStatus.success) {
        String? tokenType = response.data?.tokenType;
        String? accessToken = response.data?.accessToken;
        String? refreshToken = response.data?.refreshToken;

        //缓存实例化
        final GetStorage storageBox = GetStorage();
        storageBox.write("tokenType", tokenType);
        storageBox.write("accessToken", accessToken);
        storageBox.write("refreshToken", refreshToken);
      }

      Get.toNamed(AppRoutes.main);
    });
  }

  @override
  void onClose() {
    state.usernameController.value.dispose();
    state.passwordController.value.dispose();

    super.onClose();
  }
}
