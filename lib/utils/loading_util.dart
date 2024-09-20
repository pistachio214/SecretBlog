import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingUtil {
  static show({required String message}) {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 30.0
      ..maskType = EasyLoadingMaskType.none
      ..userInteractions = true
      ..dismissOnTap = false;

    EasyLoading.show(status: message);
  }

  static dismiss() {
    EasyLoading.dismiss();
  }
}
