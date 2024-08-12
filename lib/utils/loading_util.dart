import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingUtil {
  static show({required String message}) {
    EasyLoading.show(status: message);
  }

  static dismiss() {
    EasyLoading.dismiss();
  }
}
