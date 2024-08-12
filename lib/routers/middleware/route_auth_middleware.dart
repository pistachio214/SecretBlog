import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talk/routers/app_routes.dart';

/// 登录验证过滤器
class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    //缓存实例化
    final GetStorage storageBox = GetStorage();
    String? accessToken = storageBox.read("accessToken");
    String? refreshToken = storageBox.read("refreshToken");

    if (accessToken == null || refreshToken == null) {
      return const RouteSettings(name: AppRoutes.login);
    }

    return null;
  }
}
