import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class RegisterState {
  late RxString currentIndex = "".obs;

  late Rx<TextEditingController> usernameController;
  late Rx<TextEditingController> passwordController;
  late Rx<TextEditingController> rePasswordController;

  RegisterState() {
    usernameController = TextEditingController().obs;
    passwordController = TextEditingController().obs;
    rePasswordController = TextEditingController().obs;
  }
}
