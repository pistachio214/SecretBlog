import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:talk/routers/app_routes.dart';

/// 展览页过滤器
class RouteOnBoardMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;

  @override
  RouteSettings? redirect(String? route) {
    //缓存实例化
    // final GetStorage storageBox = GetStorage();
    // bool? firstOpenStatus = storageBox.read("fistOpen");
    //
    // if (firstOpenStatus == null || !firstOpenStatus) {
    //   return const RouteSettings(name: AppRoutes.onBoard);
    // }

    return null;
  }
}
